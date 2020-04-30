library(shiny)
ui<-shinyUI(fluidPage(
  titlePanel("mtcars dataset"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 35,
                  value = 12),
      checkboxInput("showmeanstd", 'Show/hide the mean value', value = TRUE),
      sliderInput("sliderMPG",
                  "MPG of a car?",
                  min = 10,
                  max = 35,
                  value = 20),
      checkboxInput("showmodel", 'Show/hide the predicted model', value = TRUE)
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Plot",
                 fluidRow(
                   column(8, plotOutput("histPlot")),
                   column(8,  h3("Predicted hoursepower from the model:"), textOutput("pred")),
                   column(8, plotOutput("lmplot"))
                 ))
      ))
  )
))