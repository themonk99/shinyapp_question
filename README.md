# shinyapp_question
Assistance Needed: Shiny App does not find object after deployment.

the data required is too large to upload to Github, but is at this link:
https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip 

I have moved my Shiny APP code to an app.R document, and added a global.R file to load my files only once to save memory per this suggestion (https://stackoverflow.com/questions/67316766/word-prediction-app-using-too-much-shiny-memory?noredirect=1#comment118987824_67316766) The app loads and functions correctly locally and it does deploy to shiny.io without memory issues.

But, I am now receiving the following error regarding the object 'combined sample':

Error in value[3L] : object 'combined_sample' not found Calls: local ... tryCatch -> tryCatchList -> tryCatchOne -> Execution halted

I tried inserting the 'corpus_train' function into the app.R file just above the shiny. (Data object not found when deploying shiny app)
The attached image is a screen grab of the files that I uploaded to shiny.io for the deployment.

How do I get shiny to find this object after deployment to the shiny servers?

MUCH appreciation in advance for the help of the Community!
