library(jsonlite)

data.get_coronanumbers <- function(){
  jsonlite::fromJSON("https://pomber.github.io/covid19/timeseries.json") 
}