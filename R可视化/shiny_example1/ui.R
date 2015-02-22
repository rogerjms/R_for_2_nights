library(shiny)
shinyUI(pageWithSidebar(
  headerPanel('Download Example'),
  sidebarPanel(
    conditionalPanel(
    condition="input.theTabs == 'mytable'",
    selectInput("dataset", "Choose a dataset:", 
                choices = c("rock", "pressure", "cars")),
    downloadLink('downloadData', 'Download')
  ),
   conditionalPanel(
   condition="input.theTabs == 'plot'",
   selectInput("dataset2","Choose a dataset:",choices=c("rock","pressure","cars")),
   #downloadButton('downloadData2','Download')
   conditionalPanel(
     condition="input.dataset2 == 'rock'",
     selectInput("x",'X',names(rock)),
     selectInput("y",'Y',names(rock))
   )
 ),
   conditionalPanel(
   condition="input.theTabs == 'summary'",
   selectInput("dataset3","Choose a dataset:",choices=c("rock","pressure","cars"))
 )
),
   
  mainPanel(
    tabsetPanel(id="theTabs",
    tabPanel("summary",verbatimTextOutput('summary'),value="summary"),
   # tabPanel("table",tableOutput('table'),value="table"),
    tabPanel("DataTable",dataTableOutput('mytable'),downloadButton("down2","Download head"),value="mytable"),
     tabPanel("plot",plotOutput('plot'),downloadButton("downloadData.trend","Download Graph"),value="plot")
    )
   )

))
