# OPENDATA EMT

### ETL ###
# GetRouteLines gets information about routes, distances and coordinates
curl -k --data "idClient=$EMT_ID_CLIENT&passKey=$EMT_PASS_KEY" https://openbus.emtmadrid.es:9443/emt-proxy-server/last/bus/GetRouteLines.php > data/EMTRouteLines.json

# We would like CSV to load into spreadsheet or DB
# We need some ETL pipes or Data Munging
cat data/EMTRouteLines.json | sed "s/{/\n{/g" | sed "s/\(\"\w\+\":\)\|},\|{\|}]}//g" | grep -v "^0\|^$" > testdata/EMTRouteLines.csv

# Note: http://jsfiddle.net/sturtevant/vunf9/
echo -e "line,secDetail,orderDetail,node,distance,distancePreviousStop,name,latitude,longitude" | cat - testdata/EMTRouteLines.csv > testdata/EMTRouteLines_h.csv

# Note: http://datascienceatthecommandline.com/

# With python and pandas
cat data/EMTRouteLines.json | python ./EMTRouteLines_to_csv.py > testdata/EMTRouteLines.csv



### Python notebook ###
# Start ipython notebook. Load and describe data. Plot histograms
# GetListLines gets information about lines
curl -k --data "idClient=$EMT_ID_CLIENT&passKey=$EMT_PASS_KEY&SelectDate=01/07/2015" https://openbus.emtmadrid.es:9443/emt-proxy-server/last/bus/GetListLines.php > data/EMTListLines.json



### CartoDB ###
# Load RouteLines
# View Map, simple, heatmap
# SQL queries
# PostGIS queries
# wizard CSS and infowindow
