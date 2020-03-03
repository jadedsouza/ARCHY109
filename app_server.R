library(shiny)
library(dplyr)
library(plotly)
library(ggplot2)

#load the script
source("./scripts/table.R")

# create the server
app_server <- function(input, output) {

  output$table <- renderTable({
    return(table(input$emission_variable, input$sort_variable))
  })

}
