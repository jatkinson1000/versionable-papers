library(targets)
library(tarchetypes)
tar_source()
# tar_option_set(packages = c("readr", "dplyr", "ggplot2","rCAT2","dplyr","sf","leaflet","htmlwidgets"))
tar_option_set(packages = c("readr", "dplyr", "ggplot2","dplyr","sf","leaflet","htmlwidgets"))
list(
  tar_target(previous_data, "data/Pachypodium_rosulatum/previous_data.rds", format = "file"),
  tar_target(new_recs, "data/Pachypodium_rosulatum/new_records_20250515_102643.rds", format = "file"),
  tar_target(aoo_poly_geog, process_data(previous_data)),
  tar_target(new_aoo_poly_geog, process_data(new_recs)),
  tar_target(map, mapper(aoo_poly_geog, new_aoo_poly_geog)),
  # tar_target(map_html, htmlwidgets::saveWidget(map, file = "map_test.html", selfcontained = TRUE)),
  tar_render(
    paper,
    "example.qmd",
    # Can control output file location like so:
    output_file = "pages/example.html"
  )
)
