library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    headerPanel("Child's Height prediction"),
  
    sidebarPanel(
      textInput(inputId="father", label = "Father's Height (inches)",value = "70"),
      textInput("mother", label = "Mother's Height (inches)",value = "60"),
      numericInput("children", 
                   label = "Number of children that you had", 
                   value = 1),
      radioButtons("sex", label = "Gender of child that has been diagnosed",
                   choices = list("Male" = 1,
                                  "Female" = 0),selected = 1),
      submitButton("Submit")
      
    ),
    mainPanel(
        h3('Results of prediction'),      
        h4("Which resulted in a prediction of Child's Height "),
        verbatimTextOutput("prediction"),
        h2("Tutorial"),
        p("Small application predict your child's height based on parents's height"),
        p("Explain inputs:"),
        p("1. Father's Height (inches) is height of father in inches"),
        p("2. Mother's Height (inches) is height of mother in inches"),
        p("3. Number of children that you had: If your family doesn't have any baby, you type 0; otherwise, type the number of children in your family"),
        p("4. Gender of child that has been diagnosed: indeed, based on doctor's diagnostic or you can choose based on your wish")
        
    )
  )
)
