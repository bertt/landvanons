# landvanons

demo: https://bertt.github.io/landvanons/

## Prerequisites:

OGR - Ubuntu:

```
$ add-apt-repository ppa:ubuntugis/ppa
$ apt-get update
$ apt-get install gdal-bin
```

OGR - Mac:

```
$ brew install gdal
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
$ mkdir temp
$ bash 1_create_geojson.sh
$ bash 2_merge.sh
```

Output: all.geojson is created in the root directory

## References

- Oude Ade

https://landvanons.nl/wp-content/uploads/2020/09/Ruimtelijke-analyse-Oud-Ade-gehele-polder.pdf

- Ooijpolder

https://landvanons.nl/wp-content/uploads/2021/06/Ruimtelijke-analyse-Ooijpolder-V03.pdf

- Todo: Triemen, Holtesch, Lettele, Zwagermieden, Onner Es, Noordbeemster, Hezenes, Duffelt, 
