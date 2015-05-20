library(shiny) ##Se crea en ambos archivos

##library(rchart)

mpg<-read.csv("salesfile.csv", header=TRUE)


shinyServer(
  
  
  
  function(input, output){
   
    
    output$salida2<-renderPlot({
      
      mpg2<-subset(mpg,nombre.Agencia== input$Entrada2 )
     
      hist(mpg2$Total, breaks=10,col="red")
      
      })
    
    output$salida1<-renderPrint({input$Entrada1})
    ## No hace nada
    
    output$salida3<-renderPrint({input$fechaingreso})
  }
  
  )