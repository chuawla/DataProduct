library(shiny)
library(ggplot2)
library(pxR)

source('./import.R')

# Define server logic required to draw a histogram
shinyServer(
  
  function(input, output) {
  
    output$distPlot <- renderPlot({
      
      # Extract input values
      year <- input$year
      sex  <- input$sex
      number    <- input$number
      
      output$year <- renderPrint(year)
      output$sex <- renderPrint(sex)
      output$number <- renderPrint(number)
      
      getNames(sex, number, year) 
    })
  })