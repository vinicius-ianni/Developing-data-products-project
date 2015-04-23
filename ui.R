library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Orcs body mass index (OBMI) Calculator"),
    
    sidebarPanel(
      numericInput('weight', 'Insert Orcs weight in kilograms', 100) ,
      numericInput('height', 'Insert Orcs height in metres', 2, min = 1.6, max = 6, step = 0.1),
      submitButton('Submit')
    ), 
    mainPanel(
      p('The Orcs body mass index of the (OBMI) is a measure of body fat created by me after being banned from strike groups the invading hordes of orcs during the wars in Elder Tale, attending both humans and orcs (usually renegades or slag in general) i ve developed this system that calculates quickly (orcs are unpleasant, impatient and smelly) its fat index based on height and weight (similar to humans) that applies to male orcs (not met any orc female) adults.'),
      p('The practice of those years, showed me that the values below that are most reasonable to classify the orcs:'),
      tags$div(
        tags$ul(
          tags$li('OBMI <25       : Underweight'),
          tags$li('OBMI [25.1-31.2] : Normal weight'),
          tags$li('OBMI [31.3-40.9]   : Overweight'),
          tags$li('OBMI >=41        : Obese')
        )
      ),
      
      h4('Values entered:'), 
      p('weight:'), verbatimTextOutput("inputweightvalue"),
      p('height:'), verbatimTextOutput("inputheightvalue"),
      h4('The OBMI is:'),
      verbatimTextOutput("estimation"),
      p('It means that him are:'),strong(verbatimTextOutput("diagnostic"))
      
      
    )
    
  )   
)