uiResult <- tags$div(
  class = "result",
  sidebarPanel(id = "sideBarPanelResult") 
)

serverResult <- function(input, output, session){
  sidebarPanelServer(id = "sideBarPanelResult") 
}