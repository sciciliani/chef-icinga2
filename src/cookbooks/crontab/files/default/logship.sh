#!/bin/bash


DATE=`date +%F.%H%M%S`

DOCKER="/usr/bin/docker"
AWS="/usr/local/bin/aws"
CAT="/bin/cat"
RM="/bin/rm"
BUCKET="crossover-trial-logs"
retval=0

echo "==STARTING logship.sh AT `date +"%F %T"`=="

cd $( dirname "${BASH_SOURCE[0]}" )

for i in $(ls *.config)
do
	source $i
	echo -e "\tProcessing container with image: $IMAGE..."
	CONTAINER=`docker ps | grep $IMAGE | cut -d " " -f 1`
	if [ ! -z "$CONTAINER" ]
	then 
		for FILEPATH in "${FILELIST[@]}"
		do
			FILE=$(basename "$FILEPATH")
			echo -e "\t\tDumping $FILE..."
			$DOCKER exec $CONTAINER $CAT $FILEPATH > $FILE.$DATE
			RC=${PIPESTATUS[0]}
			if [ $RC -eq 0 ]
			then
				$AWS s3 cp $FILE.$DATE s3://$BUCKET/$IMAGE/ >/dev/null
				if [ $? -eq 0 ]
				then
					echo -e "\t\tUploaded $FILE.$DATE to s3://$BUCKET/$IMAGE/"
				else
					echo -e "\t\tError uploading $FILE.$DATE to s3://$BUCKET/$IMAGE/"
				fi
			else
				echo -e "\t\tError dumping $FILEPATH from $CONTAINER to $FILE.$DATE"
				retval=33
			fi
			$RM $FILE.$DATE
		done
	else
		echo -e "\t\tNot found! Container not running?"
	fi
done

echo "==ENDING logship.sh AT `date +"%F %T"`=="
exit $retval
