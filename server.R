library(sbo)
library(shiny)

shinyserver <- function(input, output) {
        
        output$result_output <-renderText({
                predict(corpus_train,input$text)
        })
}










        


                             


        

        




