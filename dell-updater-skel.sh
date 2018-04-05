#!/bin/sh
RETURN_STATUS=0

model=
type=

logFile=$PWD/$model-$type-firmware_upate.log
rebootMessage='Please reboot server'
directory=/tmp/$model.tmp
mytime=$(date)
bold=$(tput bold)
normal=$(tput sgr0)

echo ${bold}
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo 'Dell '$model' '$type' Bundle Download & Execute Script'
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo ${normal}
echo 'logFile='$logFile

# d/l confirmation
echo
read -p 'Would you like to download '$model' components to /tmp/ diriectory? ' -n 1 -r
echo   
if [[ $REPLY =~ ^[Yy]$ ]]
then
	if [ -d "$directory" ]; then
  		cd $directory
	else  
  		mkdir /tmp/$model.tmp && cd /tmp/$model.tmp
	fi

echo ${bold}
echo Downloading... 
echo ${normal}

echo Start time: $mytime | tee -a $logFile
echo -e '\n### Download Log ###\n' >> $logFile
cat <<EOF | xargs wget 2>&1 | grep --line-buffered -A2 saved | sed -u 's/--//g' | tee -a $logFile
#
# Add https links
#
EOF

fi

# execute confirmation
echo ${bold}
read -p "Would you like to execute updates now? " -n 1 -r
echo ${normal}
if [[ $REPLY =~ ^[Yy]$ ]]
then

logFile=$OLDPWD/$model-firmware_upate.log

ExecuteDup()
{
   index=$1
	count=$2
	DUP=$3
	Options=
	force=$4
	dependency=$5
	reboot=$6

	if [ ! -z "$force" ];then
		Options="-f"
	fi
	echo [$index/$count] - Executing $DUP | tee -a $logFile
	sh "$DUP" -q $Options | tee -a $logFile
	DUP_STATUS=${PIPESTATUS[0]}
	if [ ! -z "$reboot" ];then 
		echo "NOTE: $DUP update requires machine reboot."
	fi
	if [ ${DUP_STATUS} -eq 1 ]; 
	then
		RETURN_STATUS=1
	fi
	if [ ${DUP_STATUS} -eq 9 ]; 
	then
		RETURN_STATUS=1
	fi
	if [ ${DUP_STATUS} -eq 127 ]; 
	then
		RETURN_STATUS=1
	fi
	return $RETURN_STATUS
}

#
# ExecuteDup links
#

fi

cd $OLDPWD

echo
echo End time: $mytime | tee -a $logFile
echo
echo Please see log, located at $logFile for details of the script execution
echo
echo script exited with status $RETURN_STATUS
echo
echo $rebootMessage
echo
exit $RETURN_STATUS

