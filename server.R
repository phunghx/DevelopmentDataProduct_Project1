library(shiny)

heightChild <- function(father, mother, children, childNum,gender){
  (as.numeric(father) + 1.08*as.numeric(mother))/2 - (childNum) * 2 + as.numeric(gender) * 5
  
}

shinyServer(
  function(input, output) {
    
    output$prediction <- renderPrint({
      heightChild(input$father,input$mother,as.numeric(input$children) + 1,
                  as.numeric(input$children) + 1, input$sex)
    })
  }
)
