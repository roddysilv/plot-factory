typePanel <- function(id){
    ns <- NS(id)

    tags$div(
        class = "typePanel",
        h2("Selecionando componentes"),
        tags$div(
            class = "typeChoices",
            selectInput(
                ns("type"),
                h4("Tipo de grafico"),
                choices = ""
            ),
            selectInput(
                ns("x"),
                h4("Variavel eixo X"),
                choices = ""
            ),
            selectInput(
                ns("y"),
                h4("Variavel eixo Y"),
                choices = ""
            ),
            selectInput(
                ns("groupBy"),
                h4("Agrupar por"),
                choices = ""
            )
        )
    )
}

typePanelServer <- function(id){
    moduleServer(
        id,
        function(input, output, session){
             choices <- c(
                 "Escolha um tipo" = "",
                 "Grafico de linha (com pontos)" = "markers+lines",
                 "Grafico de linha (sem pontos)" = "lines",
                 "Grafico de dispersao" = "markers",
                 "Grafico de pizza" = "pie",
                 "Grafico de boxplot" = "box"
             )

             observe({
                 req(session$userData$dataframe$data)

                 updateSelectInput(
                     session,
                     "type",
                     choices = choices,
                     selected = session$userData$plotOptions$type
                 )

                 updateSelectInput(
                     session,
                     "x",
                     choices = c("Escolha uma variavel" = "", names(session$userData$dataframe$data)),
                     selected = session$userData$plotOptions$x
                 )

                 updateSelectInput(
                     session,
                     "y",
                     choices = c("Escolha uma variavel" = "", names(session$userData$dataframe$data)),
                     selected = session$userData$plotOptions$y
                 )
                 
                 updateSelectInput(
                     session,
                     "groupBy",
                     choices = c("Escolha uma variavel" = "", names(session$userData$dataframe$data)),
                     selected = session$userData$plotOptions$groupBy
                 )
             })

             observeEvent(input$type,{
                 req(input$type)

                 if(input$type == "pie" | input$type == "box"){
                     updateSelectInput(
                        session,
                        "y",
                        choices = c("Escolha uma variavel" = "", names(session$userData$dataframe$data),
                        selected = ""
                    )

                    disable("y")
                 } else{
                     enable("y")
                 }
             })

             plotOptions <- reactiveValues(
                 type = NULL,
                 x = NULL,
                 y = NULL,
                 groupBy = NULL
             )

             observeEvent(input$type, {
                 plotOptions$type <- defaultSetPlotOptions(input = input$type)
             })

             observeEvent(input$x, {
                 plotOptions$x <- defaultSetPlotOptions(input = input$x)
             })

             observeEvent(input$y, {
                 plotOptions$y <- defaultSetPlotOptions(input = input$y)
             })

             observeEvent(input$groupBy, {
                 plotOptions$groupBy <- defaultSetPlotOptions(input = input$groupBy)
             })

             return(plotOptions)
        }
    )
}