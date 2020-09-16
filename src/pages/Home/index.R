uiHome <- tags$div(
  class = "home",
  sidebarPanel(id = "sideBarPanelHome"),
  mainPanel(
    mainText = mainText(
      title="Seja bem-vindo!",
      text=" A plot Factory e uma plataforma voltada para a criacao de graficos interativos atraves da 
            ferramenta estatistica Shiny disponivel no R."
    )
  )
)

serverHome <- function(input, output, session){
  sidebarPanelServer(id = "sideBarPanelHome") 
}