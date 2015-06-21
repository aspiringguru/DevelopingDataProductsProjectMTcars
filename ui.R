library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Developing Data Products: Project"),

  # Sidebar with a slider input for the number of bins & select # of cylinders
  sidebarLayout(
    sidebarPanel(
	  helpText("Show vehicle economy for a given number of cylinders from mtcars dataset."),
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 10,
                  value = 5),
	 selectInput("numCyls", 
        label = "Choose number of Cylinders:",
        choices = c("4", "6", "8"),
        selected = "4")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))