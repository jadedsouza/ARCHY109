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
      label = "adverb",
      choices = list("absurd", "accurate", "humorous", "smart")
    ),
    selectInput(
      inputId = "DoAC6",
      label = "sixth choice",
      choices = list("destroy worlds.", "discover inaccuracies in previous beliefs.")
    ),
    selectInput(
      inputId = "DoAC7",
      label = "movie",
      choices = list("One Million Years B.C.", 
                     "Planet of the Apes.", "Stargate", "The Body")
    ),
    selectInput(
      inputId = "DoAC8",
      label = "adverb",
      choices = list("exceptionally", 
                     "not very", "really", "not usually")
    )
  ), mainPanel(img(src = "test.jpg", width = "800px", height = "400px",
                               align = "bottom"),
      tableOutput("DoAC")
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
        label = "movie",
        choices = list("Stargate", "One Million Years B.C.", "The Mummy")
      ),
      selectInput(
        inputId = "CD3",
        label = "adjective",
        choices = list("boring", "exciting")
      ),
      selectInput(
        inputId = "CD4",
        label = "movie",
        choices = list("Planet of the Apes.", "The Body.")
      ),
      selectInput(
        inputId = "CD5",
        label = "adjective",
        choices = list("intelligent.", "beautiful.", "quirky.", "ignorant.")
      ),
      selectInput(
        inputId = "CD6",
        label = "years",
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
        label = "adjective",
        choices = list("scariest", "most unrealistic", "genuine", "impractical")
      ),
      selectInput(
        inputId = "NP2",
        label = "second choice",
        choices = list("ban on writing", "ban on reading", "lack of modern technology")
      ),
      selectInput(
        inputId = "NP3",
        label = "tribe from one million years b.c.",
        choices = list("rock tribe", "shell tribe")
      ),
      selectInput(
        inputId = "NP4",
        label = "fourth choice",
        choices = list("ability to catch fish.", "fight and rip animals for food.")
      ),
      selectInput(
        inputId = "NP5",
        label = "fifth choice",
        choices = list("archaeology", "science", "aliens", "mummies")
      ),
      selectInput(
        inputId = "NP6",
        label = "sixth choice",
        choices = list("should not", "should")
      )
    ), mainPanel(img(src = "NP.png", width = "800px", height = "400px",
                     align = "bottom"),
      tableOutput("NonProg")
    )
  )
)

page_summary <- tabPanel(
  "Summary",
  titlePanel("Conclusion"),
  mainPanel(img(src = "pilt.jpg", width = "550px", height = "790px",
                align = "bottom")),
  HTML("I hope this was as interesting to you as it was for me to write these madlibs out
       and make this prototype! <br>
       It was really wonderful taking this class, and learning more about archaeology.
       It's become increasingly apparent to me now that it's been skewed and portrayed 
       exceptionally incorrectly in movies, especially in those from the early 2000's. <br>
       I'm pretty sure that I'm going to be one of those people that comment on how obnoxious
       and inaccurately archaeologists in movies are portrayed now!
       <br>
       <br>
       (All images in this prototype were taken from images.google.com)"
       )
)

app_ui <- navbarPage(
  "Unessay",
  page_intro,
  page_one,
  page_two,
  page_three,
  page_summary
)
