#!/bin/bash
echo "Getting font file LTFetteGotisch.zip from ligafaktur.de ..."
curl -GLSs http://ligafaktur.de/LTFetteGotisch.zip -o LTFetteGotisch.zip
if [ -f LTFetteGotisch.zip ]; then
	echo "Success. Unzipping file ..."
	unzip LTFetteGotisch.zip
else
	echo "Error downloading file."
	return 1
fi
