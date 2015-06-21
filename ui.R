library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("The Probability that a Patient Truly Had a Disease when its Test Results Positive"), 
  
    sidebarPanel(
      numericInput('numeric1', 'What is the probability of correct diagnosing the disease? (In other word, the probability that test result is positive when a patient is truly has this disease)', 0.95, min = 0, max = 1, step = 0.005), 
      numericInput('numeric2', 'What is the prevalence of the disease worldwide?', 0.005, min = 0, max = 1, step = 0.001),
      submitButton('Submit')
    ),
    
    mainPanel(
      h4('If your test result of the disease is positive, the probability that you are truly attacked by the disease is'),  
      textOutput('probability'),
      h4('Conclusion:'), 
      textOutput('result')
    )
  )
)