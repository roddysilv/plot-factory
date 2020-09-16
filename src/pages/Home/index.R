uiHome <- tags$div(
  class = "home",
  sidebarPanel(id = "sideBarPanelHome"),
  mainPanel(
    mainText = mainText(
      title="Seja bem-vindo!",
      text=" A plot Factory é uma plataforma voltada para a criação de gráficos interativos através da 
            ferramenta estatística Shiny disponível no R."
    ),
    mainButton(
      mainButton = pageTransitionButton(
        id = "pageTransitionButtonHome",
        label = "Importar dados"
      ),
      p("Clique aqui para começar")
    )
  )
)

serverHome <- function(input, output, session){
  sidebarPanelServer(id = "sideBarPanelHome") 

  pageTransitionButtonServer(id = "pageTransitionButtonHome", page = "dataImport")
}