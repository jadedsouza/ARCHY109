library(shiny)
library(dplyr)
library(plotly)
library(ggplot2)

#load the script
source("./scripts/table.R")

# create the server
app_server <- function(input, output) {

  output$table <- renderUI({
    return(table(input$DoAC1, input$DoAC2))
  })
  
  output$CulturalDiff <- renderUI({
    return(pie_sources_emissions(input$CD1, input$CD2, input$CD3, input$CD4))
  })
  
  output$NonProg <- renderUI({
    return(finalmap(input$NP1, input$NP2, input$NP3, input$NP4))
  })
}
