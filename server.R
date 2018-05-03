
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(Biostrings)
library(BiocGenerics)

shinyServer(
  function(input, output){
    
    output$fastabar<-renderPlot({
      tmp<- tempfile()
      cat(input$fasta, file = tmp)
      d <- readDNAStringSet(tmp)
      lf <- letterFrequency(d, letters = c('A','T','C','G'))
      barplot(lf)
      
    })
  }
)