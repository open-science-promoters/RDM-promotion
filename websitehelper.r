#

setwd("website_build")
blogdown::hugo_cmd("--config config.toml,config-dat.toml") #bulid dat version
blogdown::build_site()

blogdown::stop_server()
blogdown::serve_site() # preview http version

blogdown::hugo_build() # do not recompile rmd file

-------
  
blogdown:::new_post_addin()

# banner : "img/userstory.png"  
# banner : "material/CC-BY/eJournals_DigitalPreservation.png"
# collected_stories (user or from web)
  # tags: - user_story
  # tags: - collected data
# banner : "img/newidea.png"  
# idea_new_mat
# banner : "material/CC-BY/eJournals_DigitalPreservation.png"
#data

# banner : "material/CC-BY/FunctionalPreservation_DigitalPreservation"
#created_material


Distributed under a CC0 license

Collected by Julien Colomb,
data manager

## get googlesheetsupdates
#library(googlesheets)

be=googlesheets::gs_title("list of videos for the promotion of open data and rdm. see https://rdmpromotion.rbind.io")

list=googlesheets::gs_read(ss=be, #literal=FALSE,
             col_types = readr::cols(`duration_mm:ss` =readr::col_character()))

readr::write_csv(list,path = "static/material/ggsheet_list.csv")
