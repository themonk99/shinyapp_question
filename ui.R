library(sbo)
library(shiny)

attach("appspace.RData")
shinyUI(pageWithSidebar(
        
        headerPanel("Predicitve Text APP"),
        sidebarPanel(
                textInput("text", label = h3("Text input"), value = "Enter text..."),
                
                
                
        ),
        
        mainPanel(
                h4("Predicted Words:"),
                verbatimTextOutput("result_output"),

                
                
                h6("This APP generates three predicted next words based on the text you input. 
                   The prediction algorithm relies on word frequencies in the English twitter, 
                   blogs, and news datasets at:"),
                h6(a("http://www.corpora.heliohost.org/")),
                br(),
                h6("Created April 2021 as part of my Captsone project for the 
                Data Science Specialization provided by Johns Hopkins University and Coursera.
                All code can be located on GitHub at:") ,
                h6(a("https://github.com/themonk99/predictive.git"))
                
        )
        
        
))
