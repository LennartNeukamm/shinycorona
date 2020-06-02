#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)
library(shinydashboard)
library(leaflet)

source("data/api.R")
source("config.R")

# Define UI for application that draws a histogram
ui <- fluidPage(

    leaflet::leafletOutput("distPlot", width  = "100%")
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- leaflet::renderLeaflet({
        
        # corona_numbers <- data.get_coronanumbers()
        # 
        # plotly::plot_ly(corona_numbers$Germany, x = ~date, y = ~deaths) %>%
        #     layout(title = "Corona Tote Deutschland")
        leaflet() %>% addTiles() %>% setView(42, 16, 4)
    })
}

#THATSMYSECRETPIN

# Run the application 
shinyApp(ui = ui, server = server)
