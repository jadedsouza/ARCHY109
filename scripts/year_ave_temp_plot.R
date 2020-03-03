# plot the average temperature per year for the US from 1991 to 2016
library("plotly")
library("dplyr")

year_ave_temp_plot <- function() {
  # wraggle the data
  at <- read.csv("data/average-temperature.csv", stringsAsFactors = FALSE)
  at_year <- at %>%
    rename("Temperature" = "Temperature....Celsius.") %>%
    group_by(Year) %>%
    summarize(
      year_ave = mean(Temperature)
    )
  # plot
  temp_plot <- ggplot(
    data = at_year, mapping = aes(x = Year, y = year_ave)
  ) +
    geom_point() +
    geom_smooth() +
    scale_x_continuous(limits = range(at_year$Year)) +
    labs(
      x = "Year", # x-axis
      y = "Average Temperature (Celsius)", # y-axis
      title = "Average Temperature of the US from 1991 to 2016"
    )
  ggplotly(temp_plot)
}

average_temp_plot <- year_ave_temp_plot() # to call from the index.rmd file
