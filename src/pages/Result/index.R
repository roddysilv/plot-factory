uiResult <- tags$div(
  class = "result",
  sidebarPanel(id = "sideBarPanelResult"),
  mainPanel(
    mainText = mainText(
      title="Resultado",
      text="Et voilà! Seu gráfico está pronto para ser compartilhado e analisado. 
            Lembre-se que design é bem sucediso quando cada detalhe tem um porquê. 
            Logo, tenha ciencia daquilo que está sendo construindo, isso fara total diferença."
    ),
    resultPanel(id = "resultPanelResult"),
    forwardBackwardButtons(id = "forwardBackwardButtonsResult", forward = FALSE)
  )  
)

serverResult <- function(input, output, session){
  sidebarPanelServer(id = "sideBarPanelResult")
  resultPanelServer(id = "resultPanelResult")
  forwardBackwardButtonsServer(
    id = "forwardBackwardButtonsResult",
    backward = "edition"
  ) 
}