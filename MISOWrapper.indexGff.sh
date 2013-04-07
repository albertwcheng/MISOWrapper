#!/bin/bash

if [ $# -lt 1 ]; then
	echo $0 MISOSettingFile
	exit
fi

MISOSettingFile=$1

if [ ! -e $MISOSettingFile ]; then
	MISOSettingFile=$MISOSETTINGPATH/$MISOSettingFile
fi 

source ${MISOSettingFile}

if [ ! -e $misoRunSetting ]; then
	misoRunSetting=$MISOSETTINGPATH/$misoRunSetting
fi


misoRunSetting=`abspath.py $misoRunSetting`

echo Using MISO wrapper setting file `abspath.py $MISOSettingFile`
echo Using MISO run setting file $misoRunSetting


echo index_gff.py --index $rawGffFile $eventGff
#index_gff.py --index $rawGffFile $eventGff #python -> use installed miso