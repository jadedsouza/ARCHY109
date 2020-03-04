library(shiny)
library(plotly)

page_intro <- tabPanel(
  "Introduction",
  titlePanel("Archaeology in Film: Unessay"),
  HTML("<strong>Jade D'Souza</strong> <br>
       Hi! Welcome to my application that I've made using 
       HTML & R. I thought it would be fun to make Madlibs of 6-8 sentences for the
       themes that we've explored in class, using code. <br>
       I decided to touch upon 3 of the most prevalent themes in my opinion: <br>
       1) Danger being released through archaeology <br>  
       2) Cultural Difference <br>
       3) Non progress <br>
       This application is 
       interactive. Do keep in mind that the first MadLib that will pop up
       on the screen is a default, but will change depending on choices of
       words from the panel on your left that you choose to put in!
       <br>
       <br>
       If you're interested in the code that I wrote, here's my github repository"
  ),
  mainPanel(
    plotlyOutput("ave_temp_plot")
  )
)


page_one <- tabPanel(
  "Dangers through Archaeology",
  titlePanel("Dangers released through Archaeology, MadLib 1"),
  sidebarLayout(
  sidebarPanel(
    selectInput(
      inputId = "DoAC1",
      label = "first choice",
      choices = list("is.", "is not.", "can be.", "can’t be.")
    ),
    selectInput(
      inputId = "DoAC2",
      label = "second choice",
      choices = list("loot", "carefully analyze", "record data", "damage")
    ),
    selectInput(
      inputId = "DoAC3",
      label = "third choice",
      choices = list("artifacts", "tombs", "indigenous sites", "bones")
    ),
    selectInput(
      inputId = "DoAC4",
      label = "fourth choice",
      choices = list("deserts.", "humid environments.", "warzones.", "the titanic.")
    ),
    selectInput(
      inputId = "DoAC5",
      label = "fifth choice",
      choices = list("absurd", "accurate", "humorous", "smart")
    ),
    selectInput(
      inputId = "DoAC6",
      label = "sixth choice",
      choices = list("destroy worlds.", "discover inaccuracies in previous beliefs.")
    ),
    selectInput(
      inputId = "DoAC7",
      label = "seventh choice",
      choices = list("One Million Years B.C.", 
                     "Planet of the Apes.", "Stargate", "The Body")
    ),
    selectInput(
      inputId = "DoAC8",
      label = "adjective",
      choices = list("exceptionally", 
                     "not very", "really", "not usually")
    )
  ), mainPanel(img(src = "test.jpg", width = "800px", height = "400px",
                               align = "bottom"),
      tableOutput("table")
    )
  )
)

page_two <- tabPanel(
  "Cultural Differences",
  titlePanel("Cultural Differences, MadLib 2"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "CD1",
        label = "first choice",
        choices = list("different worlds.", "calling apes smelly.", "social hierarchy.")
      ),
      selectInput(
        inputId = "CD2",
        label = "second choice",
        choices = list("Stargate", "One Million Years B.C.", "The Mummy")
      ),
      selectInput(
        inputId = "CD3",
        label = "second choice",
        choices = list("boring", "exciting")
      ),
      selectInput(
        inputId = "CD4",
        label = "second choice",
        choices = list("Planet of the Apes.", "The Body.")
      ),
      selectInput(
        inputId = "CD5",
        label = "second choice",
        choices = list("intelligent.", "beautiful.", "quirky.", "ignorant.")
      ),
      selectInput(
        inputId = "CD6",
        label = "second choice",
        choices = list("decades.", "aeons.", "not very long.")
      )
    ), mainPanel(img(src = "CDiff.gif", width = "800px", height = "400px",
                     align = "bottom"),
      tableOutput("CulturalDiff")
    )
  )
)

page_three <- tabPanel(
  "Non-progress",
  titlePanel("Non-Progress, MadLib 3"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "NP1",
        label = "first choice",
        choices = list("horrible", "worst")
      ),
      selectInput(
        inputId = "NP2",
        label = "second choice",
        choices = list("gorgeous", "incredible")
      ),
      selectInput(
        inputId = "NP3",
        label = "second choice",
        choices = list("gorgeous", "incredible")
      ),
      selectInput(
        inputId = "NP4",
        label = "second choice",
        choices = list("gorgeous", "incredible")
      ),
      HTML("im hoping this works")
      
    ), mainPanel(
      tableOutput("NonProg")
    )
  )
)

page_summary <- tabPanel(
  "Summary",
  titlePanel("Summary"),
  mainPanel(img(src = "test.png", width = "790px", height = "790px",
                align = "bottom")),
  HTML("<br>From all the data we can see, the highest mean temperature seen
       from 2016 is 9.0308367. We expected that this would be seen in 2016
       as our data consistently shows us that this has been the hottest year.
       The lowest mean temperature was 6.7306267, occuring in 1996. From this
       data too, we can conclude that temperature has been rising over the last
       26 with a total rise in average of 7.6169996. This helps answer the
       first part of our second question – 2016 was the hottest year.
       <br>
       <br>
       The table in our first page helps us in answering our
       <strong>first</strong> question – if
       there is a correlation between rise in average temperature and CO2
       emissions. The linear regression is 0.1984574 (from the regression
       graph to the left), so there doesn’t seem
       like there’s much of a correlation between the temperature change and
       total CO2 emissions seen per year, as the data from the table
       suggests. To answer the second question, our hottest year is not the
       year with the most CO2 emissions.
       <br>
       <br>
       The pie chart in our third page helps us in answering the question of
       where most fuel consumption comes from. For the United States,
       electricity and heat consistently are the highest categories in fuel
       consumption, almost occupying half of the pie chart.
       <br>
       <br>
       A reason we think that we could not find a direct relationship between
       emissions and temperature change is the Earth's temperature increases
       over time. Hence, it would not be likely to see 2016 have the highest
       temperature along with the highest emissions from that same year.
       Instead, we think that 2016 was the hottest as it had highest sum of CO2
       emissions (1998-2016). Each year before that is not as hot because it
       does not have
       as many CO2 emissions in that particular year.
       (For example, 2015 would only have emissions from 1998-2015, but not
       2016 according to this dataset) Our dataset may also not
       have had fully accurate readings of temperature in previous years, and
       could have inaccuracies in how much data they collected. "
       )
)

app_ui <- navbarPage(
  "Final Project",
  page_intro,
  page_one,
  page_two,
  page_three,
  page_summary
)
