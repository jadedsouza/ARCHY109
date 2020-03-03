library("dplyr")
library("plotly")
library("maps")


world_map <- function(emissions, start, end) {
  # assign starting year and ending year
  start <- paste0("YR", start)
  end <- paste0("YR", end)
  # wraggle the data
  emissions_change <- emissions %>%
    rename("Country" = "Country.Code") %>%
    rename("YR2015" = "Most_Recent") %>%
    filter(Series.Code == "EN.ATM.CO2E.KT") %>%
    group_by(Country) %>%
    summarise(change = !!as.symbol(end) - !!as.symbol(start))
  # plot
  # light grey boundaries
  l <- list(color = toRGB("grey"), width = 0.5)
  # specify map projection/options
  g <- list(
    showframe = FALSE,
    showcoastlines = FALSE,
    projection = list(type = "Mercator")
  )
  p <- plot_geo(emissions_change) %>%
    add_trace(
      z = ~change, color = ~change, colors = "Reds",
      text = ~Country, locations = ~Country, marker = list(line = l)
    ) %>%
    colorbar(title = "CO2 change(kt)") %>%
    layout(
      title = "Changes in CO2 emission over given range",
      geo = g
    )
  return(p)
}
