#!/bin/bash

#Define and Create output directory
outputDirectory=../data/`date +%Y`/`date +%m`/`date +%d`
mkdir -p $outputDirectory

#Define OutputFile Name
outputFile=$outputDirectory/sbi-forex-rate-card-`date +%Y%m%d`-`date +%H%M%S`.pdf

#Download the file
curl --location 'https://sbi.co.in/documents/16012/1400784/FOREX_CARD_RATES.pdf' --output $outputFile

#Do git commit
git add $outputFile
git commit -m "Sbi Forex Rate Card for `date +%Y%m%d`"
git push origin master

