library(shiny)

shinyServer(
  function(input, output) {
    x <- reactive({as.numeric(input$numeric1) * as.numeric(input$numeric2) / (as.numeric(input$numeric1) * as.numeric(input$numeric2) + (1 - as.numeric(input$numeric1)) * (1 - as.numeric(input$numeric2)))})
    output$probability <- renderText({x()})
    
    output$result <- renderText({
      if (as.numeric(x()) <= 0.1) "Don't worry, it is almost impossible that you are attacked by the disease!"
      else if ((as.numeric(x()) > 0.1) && (as.numeric(x()) <= 0.5)) "You are less likely attacked by the disease. However, you still need to pay attention to it!"
      else "You are gonna have this disease. Please recieve treatment positively."
    })
  }
)