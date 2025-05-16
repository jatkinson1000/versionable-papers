process_data <- function(data) {
	# run cleaning protocols
	flag_errors <- LCr::flag_occs(data)
	clean_points <- LCr::clean_occs(flag_errors$flagged_data)
	
	clean_points <- clean_points$clean_occs %>%
	  filter(country == "Madagascar")
	
	#reformat points
	thepoints <- clean_points %>%
	  dplyr::select(decimalLatitude, decimalLongitude) %>%
	  dplyr::rename("long" = "decimalLongitude",
	                "lat" = "decimalLatitude") %>%
	  dplyr::filter(complete.cases(lat))
	
	
	# project the points for correct area measurements
	thepoints <- simProjWiz(thepoints)
	
	#get the EOO area in km2 for these points
	eoo_poly <- eoo(thepoints, returnV = "SF")
	eoo_poly_geog <- st_transform(eoo_poly, 4326) #set to geogrpahic to view on map
	eoo_val <- eoo(thepoints)
	
	#get the AOO area
	aoo_val <- aoo(thepoints)
	aoo_grid <- aoo(thepoints, returnV = "SF", cellsize = 20000)
	aoo_poly_geog <- st_transform(aoo_grid, 4326) #set to geogrpahic to view on map
  
	list(eoo_poly_geog = eoo_poly_geog, aoo_poly_geog = aoo_poly_geog)	
}

mapper <- function(eoo_poly_geog, aoo_poly_geog, new_aoo_poly_geog) {
	m <- leaflet() %>%
	  leaflet::addProviderTiles("OpenStreetMap", group = "OpenStreetMap") %>%
	  leaflet::addProviderTiles("Esri.WorldImagery", group = "Satellite")
	
	m <- leaflet() %>%
	  addProviderTiles("OpenStreetMap", group = "OpenStreetMap") %>%
	  addProviderTiles("Esri.WorldImagery", group = "Satellite") %>%
	
	  # EOO Polygon
	  addPolygons(
	    data = eoo_poly_geog,
	    color = "red",
	    weight = 1,
	    opacity = 1,
	    dashArray = "3",
	    fillOpacity = 0,
	    group = "EOO"
	  ) %>%
	
	  # Old AOO Polygon
	  addPolygons(
	    data = aoo_poly_geog,
	    fillColor = "red",
	    weight = 1,
	    opacity = 1,
	    color = "black",
	    dashArray = "3",
	    fillOpacity = 0.3,
	    group = "AOO (old)"
	  ) %>%
	
	  # New AOO Polygon
	  addPolygons(
	    data = new_aoo_poly_geog,
	    fillColor = "limegreen",
	    color = "darkgreen",
	    weight = 3,
	    fillOpacity = 1,
	    opacity = 1,
	    group = "AOO (new)"
	  ) %>%
	
	  # Layers Control
	  addLayersControl(
	    baseGroups = c("OpenStreetMap", "Satellite"),
	    overlayGroups = c("EOO", "AOO (old)", "AOO (new)"),
	    options = layersControlOptions(collapsed = FALSE)
	  )
	m
}
