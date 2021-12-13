#!/bin/bash
input="parcels.txt"
while IFS= read -r line
do
  IFS=','
  read -a strarr <<< "$line"
  gemeente="${strarr[0]}"
  sectie="${strarr[1]}"
  perceelnummer="${strarr[2]}"
  perceelnummer=$(echo $perceelnummer | tr -d '\r')
  echo "${gemeente}, ${sectie}, ${perceelnummer}"
  geojsonfile="temp/${gemeente}_${sectie}_${perceelnummer}.geojson"
  ogr2ogr -f GeoJSON "${geojsonfile}" "WFS:https://geodata.nationaalgeoregister.nl/kadastralekaart/wfs/v4_0" -t_srs epsg:4326 -sql "SELECT * FROM perceel where AKRKadastraleGemeenteCodeWaarde='${gemeente}' AND sectie='${sectie}' and perceelnummer=${perceelnummer}"
done < "$input"