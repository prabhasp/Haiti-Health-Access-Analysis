require(OpenStreetMap)
map <- openmap(c(20.088, -74.479), c(18.021, -71.613), minNumTiles=9, type="osm-bbike")
mapprojected <- openproj(map, CRS('+proj=utm +zone=18 +datum=WGS84 +units=m +no_defs +ellps=WGS84 +towgs84=0,0,0'))
saveRDS(mapprojected, 'data/HaitiBaseMapPlain_utm.rds')
