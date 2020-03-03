# plot a pie chart for the distribution of different sources of emissions
library("plotly")
library("dplyr")

# Take in: a string of country code, and the an int of year to refer to
# Produce: a pie chart for the distribution of different sources of emissions
#          for that country
pie_sources_emissions <- function(emissions, info, country, year) {
  # wraggle the data
  cate <- c(
    "EN.CO2.ETOT.ZS",
    "EN.CO2.MANF.ZS",
    "EN.CO2.OTHX.ZS",
    "EN.CO2.BLDG.ZS",
    "EN.CO2.TRAN.ZS"
  )
  copy_year <- year
  year <- paste0("YR", year)
  sources_emissions <- emissions %>%
    rename("Country" = "Country.Code") %>%
    rename("YR2015" = "Most_Recent") %>%
    filter(Country == country) %>%
    select(Country, Series.Code, year) %>%
    left_join(info, by = c("Series.Code" = "Code")) %>%
    filter(Series.Code %in% cate)

  # if every category is NA, show a message
  if (all(is.na(sources_emissions[[year]]))) {
    message("Data missing for all categories.")
  }
  new_labels <- c("Electricity and Heat",
                  "Manufacturing industries and construction",
                  "Other",
                  "Residential, commercial, and public services",
                  "Transport")
  # plot
  p <- plot_ly(
    data = sources_emissions,
    labels = ~new_labels,
    values = ~get(year),
    type = "pie"
    ) %>%
    layout(
      title = paste("Fuel Consumption due to Personal Expenditure in ",
                    copy_year, " (", country, ")", sep = ""),
      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
      font = list(size = 10)
    )

  return(p)
}
