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

- Lettele

https://landvanons.nl/wp-content/uploads/2020/09/Ruimtelijke-analyse-Lettele.pdf

- Beemster

https://landvanons.nl/wp-content/uploads/2021/04/Ruimtelijke-Analyse-Beemster-V03-1.pdf

- Todo: Triemen, Holtesch, Zwagermieden, Onner Es, Hezenes, Duffelt


datacenter: 

ZWD03,A,6364
ZWD03,A,4012
ZWD03,A,6359
ZWD03,A,6372
ZWD03,A,6367
ZWD03,A,4741





