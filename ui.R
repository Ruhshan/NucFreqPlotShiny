
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
  titlePanel("Frequency Count"),
  sidebarLayout(
    sidebarPanel(h2("Enter the fasta string"),
                 textAreaInput("fasta", "Enter Fasta")
    ),
    
    mainPanel(("Plot"),
              plotOutput("fastabar")
    )
  )
  
)

)