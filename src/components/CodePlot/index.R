codePlot <- function(id){
    ns <- NS(id)

    tags$div(
        class = "codePlot"
    )
}

codePlotServer <- function(id){
    moduleServer(
        id,
        function(input, output, session){

        }
    )
}