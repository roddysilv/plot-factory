library(shiny)

bcl <-read.csv("bcl-data.csv", stringsAsFactors = FALSE)

ui <- fluidPage(
  titlePanel("BC Liquor Store prices"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("priceInput", "Price", min = 0,max = 100, value = c(25,40), pre = "$"),
      radioButtons("typeInput", "Product type", choices = c("BEER", "REFRESHMENT","SPIRITS","WINE"),selected = "WINE"),
      
    ),
    mainPanel(
      "the results will go here"
    )
  )
)

server <- function(input, output, session){
  
}

shinyApp(ui, server)