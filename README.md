# landvanons

demo: https://bertt.github.io/landvanons/

## Prerequisites:

OGR:

```
$ add-apt-repository ppa:ubuntugis/ppa
$ apt-get update
$ apt-get install gdal-bin
```

MapBox geojson-merge:

```
$ npm install -g @mapbox/geojson-merge 
```

## Processing

Input: data/parcels.txt

Output: GeoJSON file with parcels

Using: WFS PDOK kadastralekaart

```
$ cd data
$ bash 1_create_geojson.sh
$ bash 2_merge.sh
```

