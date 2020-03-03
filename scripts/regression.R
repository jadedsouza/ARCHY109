library(dplyr)
library(tidyr)
library(httr)
library(jsonlite)


Sys.setlocale("LC_ALL", "English")

temperature <- read.csv("data/average-temperature.csv",
                        stringsAsFactors = FALSE)

emission <- read.csv("data/co2-emissions.csv", stringsAsFactors = FALSE)

#Modified temperature dataset for year average, and
#filter the data set with the Year 1997 ~ 2013
temp1 <- temperature %>%
  group_by(Year) %>%
  summarise(year_temp = sum(Temperature....Celsius. / 12)) %>%
  group_by(Year) %>%
  select(Year, year_temp) %>%
  filter(Year > 1997) %>%
  filter(Year < 2013)

# Filtered emission data set as only UsA, and total greenhouse
emis1 <- emission %>%
  rename("Country" = "Country.Code") %>%
  filter(Country == "USA") %>%
  filter(Series.Code == "EN.ATM.GHGT.KT.CE")

#change the format of data frame for the emis1
emis2 <- gather(emis1,
                key = year,
                value = EN.ATM.GHGT.KT.CE
) %>%
  slice(3:17)

#Changing the year format as xxxx
emis3 <- emis2 %>%
  mutate(Year = substring(emis2$year, 3, 6)) %>%
  select(Year, EN.ATM.GHGT.KT.CE)


#Changing the years as a numeric
emis3$Year <- as.integer(emis3$Year)


#combining the Temperature data set and emission data set based on the year
temp_emission <- left_join(emis3, temp1, by = "Year") %>%
  rename("Total_Emission" = "EN.ATM.GHGT.KT.CE") %>%
  rename("Temperature_Change" = "year_temp")

#Changing the total eission colum in the temp_emission data set for the
#linear regression
temp_emission$Total_Emission <- as.numeric(temp_emission$Total_Emission)

#plotting the linear regression
plot <- scatter.smooth(x = temp_emission$Total_Emission,
               y = temp_emission$Temperature_Change,
               main = "Emission ~ Temperature Change")

#calculating the correlation coefficient
regression <- cor(temp_emission$Temperature_Change,
                  temp_emission$Total_Emission)
