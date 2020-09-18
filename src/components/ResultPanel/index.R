resultPanel <- function(id){
    ns <- NS(id)

    tags$div(
        class = "resultPanel",
        displayPlot(id = ns("plot"))
    )
}

resultPanelServer <- function(id){
    moduleServer(
        id,
        function(input, output, session){
            displayPlotServer(id = "plot")
        }
    )
}