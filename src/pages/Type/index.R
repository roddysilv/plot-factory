uiType <- tags$div(
  class = "type",
  sidebarPanel(id = "sideBarPanelType") 
)

serverType <- function(input, output, session){
  sidebarPanelServer(id = "sideBarPanelType") 
}