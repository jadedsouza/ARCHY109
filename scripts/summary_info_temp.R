library(dplyr)
calculation_temp <- function(df) {
  #dataframe of mean temperatures by year
  sum_temp <- df %>%
    rename("Temperature" = "Temperature....Celsius.") %>%
    select(Temperature, Year) %>%
    group_by(Year) %>%
    summarize(
      mean = mean(Temperature)
    )
  output <- list()
  output$year_max_mean <- mean(sum_temp$mean) # mean from all years
  output$years <- nrow(sum_temp) # number of years
  output$max_mean <- max(sum_temp$mean) #the greatest temp mean
  output$min_mean <- min(sum_temp$mean) #the smallest temp mean
  output$max_year <- sum_temp$Year[sum_temp$mean == output$max_mean]
  #the year that had the greatest temp mean
  output$min_year <- sum_temp$Year[sum_temp$mean == output$min_mean]
  #the year that had the smallest temp mean
  return(output)
}

avg_temperature_df <- read.csv("data/average-temperature.csv",
                               stringsAsFactors = FALSE)
# calling function to use in the index.rmd file
list_avg_temp <- calculation_temp(avg_temperature_df)
