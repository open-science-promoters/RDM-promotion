
setwd("website_build")
blogdown::build_site()

blogdown::stop_server()
blogdown::serve_site()

blogdown::hugo_build() # do not recompile rmd file

blogdown:::new_post_addin()

# banner : "img/userstory.png"   
# banner : "img/newidea.png"   

# Distributed under a CC0 license
# 
# Collected by Julien Colomb,
# data manager

## get googlesheetsupdates
#library(googlesheets)

be=googlesheets::gs_title("list of videos for the promotion of open data and rdm. see https://rdmpromotion.rbind.io")

list=googlesheets::gs_read(ss=be, #literal=FALSE,
             col_types = readr::cols(`duration_mm:ss` =readr::col_character()))

readr::write_csv(list,path = "static/material/ggsheet_list.csv")
