setwd("website_build")
blogdown::build_site()
blogdown::stop_server()
blogdown::serve_site()

blogdown::hugo_build() # do not recompile rmd file

blogdown:::new_post_addin()


## get googlesheetsupdates
library(googlesheets)
be=gs_title("list of videos for the promotion of open science")

list=gs_read(ss=be, #literal=FALSE,
             col_types = readr::cols(`duration (mm:ss)` =readr::col_character()))

readr::write_csv(list,path = "static/material/ggsheet_list.csv")
