library(shiny)
library(dplyr)
library(plotly)
library(ggplot2)

#load the script
source("./scripts/table.R")
source("./scripts/pie_sources_emissions.R")
source("./scripts/finalmap.R")


# create the server
app_server <- function(input, output) {

  output$DoAC <- renderUI({
    return(table(input$DoAC1, input$DoAC2, input$DoAC3, input$DoAC4, 
                 input$DoAC5, input$DoAC6,input$DoAC7, input$DoAC8))
  })
  
  output$CulturalDiff <- renderUI({
    return(pie_sources_emissions(input$CD1, input$CD2, input$CD3, input$CD4,
                                 input$CD5, input$CD6))
  })
  
  output$NonProg <- renderUI({
    return(finalmap(input$NP1, input$NP2, input$NP3, input$NP4, input$NP5,
                    input$NP6))
  })
}
