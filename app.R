# Creating the Shiny app

library(shiny)

source("app_ui.R")
source("app_server.R")

shinyApp(ui = app_ui, server = app_server)
