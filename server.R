library(shiny) 

OBMI<-function(weight,height) {weight/(height^2)}

results<-function(weight,height){
  OBMIvalue<-weight/(height^2)
  ifelse(OBMIvalue<25,"Underweight",ifelse(OBMIvalue<25.1,"Normal weight",ifelse(OBMIvalue<31.3,"Overweight","Obese")))
}

shinyServer(
  function(input, output) {
    
    output$inputweightvalue <- renderPrint({input$weight})
    output$inputheightvalue <- renderPrint({input$height})
    output$estimation <- renderPrint({OBMI(input$weight,input$height)})
    output$diagnostic <- renderPrint({results(input$weight,input$height)})
  } 
)