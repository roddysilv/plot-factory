displayDataframe <- function(id){
    ns <- NS(id)

    tags$div(
        class = "displayDataFrame",
        dataTableOutput(ns("dataFrame"), height = "400px", width = "500px")
    )
}

displayDataframeServer <- function(id, dataFrame){
    moduleServer(
        id,
        function(input, output, session){
            output$dataFrame <- renderDataTable({
                datatable(dataFrame$data)
            })
        }
    )
}