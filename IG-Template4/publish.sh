#!/bin/bash
# exit when any command fails
set -e
while getopts twoplu: option
do
 case "${option}"
 in
 t) NA='N/A';;
 w) WATCH=1;;
 o) PUB=1;;
 p) UPDATE=1;;
 l) LOAD_TEMPLATE=1;;
 u) TEST_TEMPLATE=$OPTARG;;
 esac
done
echo "================================================================="
echo === Publish $SOURCE IG!!! $(date -u) ===
echo see 'local workflow.md' file for how to use
echo "Optional Parameters"
echo '-t parameter for no terminology server (run faster and offline)= ' $NA
echo '-w parameter for using watch on igpublisher from source default is off = ' $WATCH
echo '-o parameter for running previous version of the igpublisher= ' $PUB
echo '-p parameter for downloading latest version of the igpublisher from source = ' $UPDATE
echo '-l parameter for downloading HL7 ig template from source = ' $LOAD_TEMPLATE
echo '-u parameter for running from local test template file= ' $TEST_TEMPLATE
echo ' current directory =' $PWD
echo "================================================================="
echo getting rid of .DS_Store files since they gum up the igpublisher....
find . -name '.DS_Store' -type f -delete
sleep 1
# git status
if [[ $UPDATE ]]; then
echo "========================================================================"
echo "Downloading most recent publisher to:"
echo ~/Downloads/org.hl7.fhir.igpublisher.jar
echo "... it's ~100 MB, so this may take a bit"
echo "========================================================================"
mv ~/Downloads/org.hl7.fhir.igpublisher.jar ~/Downloads/org.hl7.fhir.igpublisher-old.jar
curl -L https://github.com/FHIR/latest-ig-publisher/raw/master/org.hl7.fhir.publisher.jar -o ~/Downloads/org.hl7.fhir.igpublisher.jar
echo "===========================   Done  ===================================="
sleep 3
fi
# default is to use local my_framework as template
# template=$PWD/my_framework
template=/Users/client/Documents/JKL_Template
if [[ $LOAD_TEMPLATE ]]; then
template=hl7.fhir.template
fi

if [[ $TEST_TEMPLATE ]]; then
template=$TEST_TEMPLATE
fi

echo "================================================================="
echo === load the hl7 template by setting $PWD/ig.ini ===
echo === template parameter to .................................... ===
echo === $template ===
echo "================================================================="
sed -i'.bak' -e "s|^template = .*|template = ${template}|" $PWD/ig.ini

path=~/Downloads/org.hl7.fhir.igpublisher.jar
if [[ $PUB ]]; then
path=~/Downloads/org.hl7.fhir.igpublisher-old.jar
fi

if [[ $WATCH ]]; then
  echo "================================================================="
  echo === run most recent version of the igpublisher with watch on ===
  echo "================================================================="
  java -jar ${path} -ig ig.ini -watch -tx $NA
else
  echo "================================================================="
  echo ===run igpublisher just once \(no watch option\)===
  echo "================================================================="
  echo java -jar ${path} -ig ig.ini -tx $NA
  java -jar ${path} -ig ig.ini -tx $NA
fi
