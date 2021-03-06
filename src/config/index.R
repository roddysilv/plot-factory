suppressMessages(library(shiny))
suppressMessages(library(shiny.router))
suppressMessages(library(shinyjs))
suppressMessages(library(sass))
suppressMessages(library(DT))
suppressMessages(library(colourpicker))
suppressMessages(library(plotly))
suppressMessages(library(tidyverse))



addResourcePath("assets", "./src/assets")

source("./src/components/SideBarPanel/index.R")
source("./src/components/SideBarPanelItem/index.R")
source("./src/components/PageTransitionButton/index.R")
source("./src/components/ImportPanel/index.R")
source("./src/components/ImportDataButton/index.R")
source("./src/components/DisplayDataframe/index.R")
source("./src/components/ForwardBackwardButtons/index.R")
source("./src/components/TypePanel/index.R")
source("./src/components/EditionPanel/index.R")
source("./src/components/SwitchCheckBox/index.R")
source("./src/components/ResultPanel/index.R")
source("./src/components/DisplayPlot/index.R")
source("./src/components/CodePlot/index.R")

source("./src/functions/ui/MainPanel/index.R")
source("./src/functions/ui/MainText/index.R")
source("./src/functions/ui/MainButton/index.R")
source("./src/functions/ui/FileInputOnlyButton/index.R")

source("./src/functions/server/DefaultSetPlotOptions/index.R")
source("./src/functions/server/TypeOfPlot/index.R")
 
source("./src/routes/index.R")
