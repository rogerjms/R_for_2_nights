library(ggplot2)
shinyServer(function(input, output) {
  datasetInput <- reactive({
    switch(input$dataset,
           "rock" = rock,
           "pressure" = pressure,
           "cars" = cars)
  })
  datasetInput2 <- reactive({
    switch(input$dataset2,
           "rock" = rock,
           "pressure" = pressure,
           "cars" = cars)
  })
  
  datasetInput3 <- reactive({
    switch(input$dataset3,
           "rock" = rock,
           "pressure" = pressure,
           "cars" = cars)
  })  
  
  output$mytable <- renderDataTable({
    datasetInput()
  },options=list(bSortClasses=TRUE))
  output$plot<-renderPlot({
     p <- ggplot(datasetInput2(), aes_string(x=input$x, y=input$y)) + geom_point()
     print(p)
  })
  expr_down<-quote({
      p <- ggplot(datasetInput2(), aes_string(x=input$x, y=input$y)) + geom_point() 
      print(p)  
   })
  expr_down2<-quote({
  head(datasetInput())
  })
  ex_2<-reactive(expr_down2,quote=TRUE)
  myTrend<-reactive(expr_down,quote=TRUE)
  output$summary<-renderPrint({
  summary(datasetInput3())
  })
  output$downloadData <- downloadHandler(
    filename = function() { paste(input$dataset, '.csv', sep='') },
    content = function(file) {
    write.csv(datasetInput(), file)
    }
  )
 output$down2<-downloadHandler(
  filename = function(){paste(Sys.Date(),".csv",sep="")},
  content = function(file){
  write.csv(ex_2(),file)
  }
  ) 
output$downloadData.trend <- downloadHandler(
    
    filename <- function() {
      paste("Trend_plot", Sys.Date(),".png",sep="") },
    content <- function(file) {
      png(file, width = 980, height = 400,
          units = "px", pointsize = 12,
          bg = "white", res = NA)
      
      trend.plot <- myTrend()
      
      print(trend.plot)
      
      dev.off()},
    contentType = 'image/png')
 output$downloadData2<- downloadHandler(
   filename=function(){paste(input$dataset2,".txt",sep="")},
   content=function(file){
    write.table(datasetInput(),file)
   } 
  )
})
