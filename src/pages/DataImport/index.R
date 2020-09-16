uiDataImport <- tags$div(
  class = "dataImport",
  sidebarPanel(id = "sideBarPanelDataImport") 
)

serverDataImport <- function(input, output, session){
  sidebarPanelServer(id = "sideBarPanelDataImport") 
}