library(shiny)



shinyUI(pageWithSidebar( ##shiniyUI=User Interface. pageWithSidebar= crear pagina con barra lateral
  
  headerPanel("Ejemplo2 entrada numérica Gonzalo Moreno"),
  
  sidebarPanel(
    
    
         h3("letra tamaño h3"),
  
  
         numericInput("Entrada1", "Entrada númerica etiqueta 1", 0,min=0, max=10, step=1),
  
         checkboxGroupInput("Entrada2", "caja de chequeo", c("BOGOTA"="BOGOTA", 
                                                            "VILLAVICENCIO"= "VILLAVICENCIO",
                                                            "VALLEDUPAR"= "VALLEDUPAR",
                                                            "BUCARAMANGA"="BUCARAMANGA",
                                                            "YOPAL"="YOPAL",
                                                            "IBAGUE"="IBAGUE",
                                                            "DORADA"="DORADA",
                                                            "FLORENCIA"="FLORENCIA")),
  
         dateInput("fechaingreso", "fecha:")
  
  ),
  mainPanel(
    
         h2("Titulo principal, letra tamaño h2"),
         h2("Usted ingreso la variable numérica, letra tamaño h4"),
         verbatimTextOutput("salida1"),
         ##verbatimTextOutput("salida2"),
         plotOutput("salida2"),
         verbatimTextOutput("salida3")
    
    
    )
   
  
  
  )
  
)