library(shinythemes)
shinyUI(fluidPage(
  theme = shinytheme("journal"),
  
  titlePanel("Sentiment visualization for Developing Data Products Course"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Please select sentiment type, date and leader combination to see the sentiment distribution on Map."),
      
      selectInput("varLeader", 
                  label = "Choose a leader to display",
                  choices = c("Barack Obama", "Hillary Clinton",
                              "Joe Biden", "Andrew Cuomo", "Bernie Sanders",
                              "Reince Priebus", "Jerry Brown", "Kirsten Gillibrand",
                              "Jeb Bush","Mike Huckabee", "Marco Rubio" ),
                  selected = "Barack Obama"),
      
      checkboxGroupInput("typeSentiment", "Sentiment types", c( "Positive" = "P", "Negative" = "N", "Neutral" = "O")
                         , selected = c("Positive", "Negative", "Neutral"), inline = FALSE)
     
      ,  uiOutput("choose_dates")
      ,actionButton("goButton", "Go!")
      #, submitButton("Submit")
    ),
   
    mainPanel(
      h4(textOutput("caption")), 
      textOutput("ranfor"), a("I can be contacted at sinharitesh@gmail.com", href = "mailto:sinharitesh@gmail.com"), 
      htmlOutput("gvis")
      
      )
  )
))

