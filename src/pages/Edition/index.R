uiEdition <- tags$div(
  class = "edition",
  sidebarPanel(id = "sideBarPanelEdition") 
)

serverEdition <- function(input, output, session){
  sidebarPanelServer(id = "sideBarPanelEdition") 
}