importDataButton <- function(id, label){
    ns <- NS(id)

    tags$div(
        class = "importDataButton",
        tags$a(
            fileInputOnlyButton(
                inputId = ns("button"),
                label = NULL,
                buttonLabel = label,
                accept = ".RDS",
                class = "green-button"
            )
        )
    )
}

importDataButtonServer <- function(id,label){
    moduleServer(
        id,
        function(input,output,session){
            dataFrame <- reactiveValues(data =NULL)

            observeEvent(input$button,{
                dataFrame$data <- readRDS(input$button$datapath)
            })

            return(dataFrame)
        }
    )
}