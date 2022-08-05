library(shiny)

ui <- fluidPage(
  textInput(inputId = "name",
            label = "What's your name?"),
  textOutput("greeting")
)

server <- function(input, output, session) {
  output$greeting <- renderText({
    paste("Hello", input$name)
  })
}

shinyApp(ui, server)