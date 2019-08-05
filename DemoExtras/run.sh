#!/bin/sh


SPEPATH=$1
INPUT=$2
ZOOMFACTOR=$3
OUTPUT=$4


EXEC=tv-triangulation-color
convert $INPUT inputPPM.ppm
${EXEC} -i inputPPM.ppm -b ${ZOOMFACTOR} -D 16 -o output
mv output-2nd.png ${OUTPUT}
convert  -scale "${ZOOMFACTOR}00%" inputPPM.ppm src-bitmap.png
