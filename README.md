# Final Project <br>

Hosted Shiny App: https://jadedsouza.shinyapps.io/final-jadedsouza/

In this project, we intend on using 2 datasets, average-temperature.csv and co2-emissions.csv. The dataset emissions-info.csv will not be used -- its intention is only to be able to easily read and analyse the data in co2-emissions.csv.

**1. Why are you interested in this field/domain?** <br>
Climate Change is something that isn't being given as much attention to in the United States. Our group's intention is to analyse the change in average temperature here, along with the change in CO2 emissions and try to find a correlation. We expect to hopefully see trends from our datasets. It would be interesting for us to see exactly what causes the most harm to the environment around us, and what could be reduced from there on.

**2. What other examples of data driven project have you found related to this domain (share at least 3)?** <br>
* [_Global Climate Change_](https://climate.nasa.gov/) by Nasa <br>
This website provides accurate and timely news and information about Earth’s changing climate, along with current data and visualizations, presented from NASA. By presenting information with multimedia experiences, this website allows the public to understand climate change from its evidence, causes, effects, and solutions.
* [_The Best Data Viz and Infographics on Climate Change Facts_](https://visme.co/blog/climate-change-facts/) by Orana Velarde <br>
This is a collection of visualizations on climate changes facts from the last few years. The author tries to use this as tool to fight against the global warming controversy by letting more people understand the climate change with eye-opening graphs and pictures.
* [_ClimateWatch_](https://www.climatewatchdata.org/) by World Resources Institute <br>
This is an online platform designed to empower policymakers, researchers, media and other stakeholders with the open climate data, visualizations and resources they need to gather insights on national and global progress on climate change. It is contributed by several world-wide organizations and institute such as ACTS, NDC partnership, the UN, and Google.

**3. What data-driven questions do you hope to answer about this domain (share at least 3)?** <br>
a) Is there a correlation between CO2 emissions and average temperature in the United States? <br>
b) What is the hottest year? Does the hottest year also have have the most CO2 emissions? <br>
c) Where do most CO2 emissions come from? (ie. liquid fuel gas consumption, transport, residential buildings) <br>
We intend on filtering the data pertaining to the United States from co2-emissions.csv. average-temperature.csv contains data on the United States only.

**4. Where did you download the data (e.g., a web URL)?** <br>
average-temperature.csv - https://climateknowledgeportal.worldbank.org/download-data?fbclid=IwAR0_4L18xx27AdYQy2sccVFKefQomEvtQvtsSnvgdLyUJdQnMbtho91XDig <br>
co2-emissions.csv and emissions-info.csv - https://data.worldbank.org/indicator/en.atm.co2e.pc

**REMEMEMBER TO ANSWER QUESTIONS ON THIS FOR BOTH OUR DATA SETS!** <br>
**5. How was the data collected or generated? Make sure to explain who collected the data (not necessarily the same people that host the data), and who or what the data is about?** <br>
Average-temperature.csv : Collected by: Climatic Research Unit (CRU) Time-series (TS) data <br>
The data set is on the collected monthly average temperature in celsius for years between 1991 to 2016 in US, provided on high-resolution.
>Source: CRU at the University of East Anglia.

Co2-emissions.csv : Collected carbon dioxide emissions amount and put a code (indicator name) for each data since co2 comes from variety of factors. The U.S. Department of Energy's Carbon Dioxide Information Analysis Center (CDIAC) calculates annual anthropogenic emissions from data on fossil fuel consumption and world cement manufacturing. They recalculate the amount for entire year since 1949 to correct any mistakes. This makes their data clean, higly valuable, and credible. The dataset is for every country, and we intend on filtering it out by the US for analysis.
>Source: Carbon Dioxide Information Analysis Center, Environmental Sciences Division, Oak Ridge National Laboratory, Tennessee, United States.

**6. How many observations (rows) are in your data?** <br>

* Average-temperature.csv: For this data set, it has 2821 numbers of rows which represent the different sectors of CO2 emission for the different countries. We might abstract the data for the only USA data set for future observation.

* Co2-emissions.csv: It has 312 rows which indicate months between Jan, 1991 and Dec 2016  

**7. How many features (columns) are in the data?** <br>

* Average-temperature.csv: 5 columns(features) which are a temperature difference between the months, year that was collected, statistics(how the temperature calculated: mean of the each day's temperature difference), country(where was the data collected), and IOS3 which is the country code.

* Co2-emissions.csv: 20 columns(features) which are a country codes, Series code which represents the sectors of CO2 emission calcaulated, and 18 consecutive years that data was pulled(from 1998 to 2015(resent)).  

**8. What questions (from above) can be answered using the data in this dataset?** <br>
With the data sets that we have right now, we can briefly answer the question a and c. Along with the assumption of temperature change and CO2 emission as an independent variable, we might use linear regression to find the correlation coefficient. However, we will not be able to find the proportion of CO2 emission between states since our emission data set is only for the total emission of the United States. For question c, we can briefly explain where the emission is from based on the series code in the emission data set which specifies the sectors of CO2 emission.

### Team Members: <br>
* Jacqueline Park <br>
* Jade D'Souza <br>
* Garam Park <br>
* Weicheng Wang
