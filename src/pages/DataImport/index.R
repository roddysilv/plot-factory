uiDataImport <- tags$div(
  class = "dataImport",
  sidebarPanel(id = "sideBarPanelDataImport") ,
  mainPanel(
    mainText = mainText(
      title="Importando Dados",
      text="O primeiro passo para a construção de qualquer gráfico é importar o banco de dados.
            Para isso, clique no botão abaixo para selecionar o arquivo de interesse.",
      p(
        "É importante resaltar que os dados devem estar livre se erros e com a formatação correta de suas 
        variáveis. Para que isso ocorra, exigimos que a base de dados esteja em formato .RDS"
      )
    ),
    importPanel(id = "importPanelDataImport"),
    forwardBackwardButtons(id = "forwardBackwardButtonsDataImport")
  )
)

serverDataImport <- function(input, output, session){
  sidebarPanelServer(id = "sideBarPanelDataImport") 
  importPanelServer(id = "importPanelDataImport")
  forwardBackwardButtonsServer(id = "forwardBackwardButtonsDataImport",backward = "/", forward ="type")
}