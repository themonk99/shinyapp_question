# shinyapp_question
I have created a very basic word-prediction APP for a class that utilizes an [SBO predictor][1] object as the source of the prediction results. That SBO file it named "corpus_train" and is listed in the RStudio environment as "external pointer of class 'sbo_predictor'.

The APP works as intended locally. However, when I deploy to Shiny I receive the following log error:
"Warning: Error in predict_sbo_predictor: external pointer is not valid"

Here is the process I used to deploy to Shiny: 
To avoid uploading the very large raw txt files, of which the 'corpus_train' predictor is a subset, I did the following: 

 1. saved the "corpus_train" with this code: saveRDS(corpus_train, file = "corpus_train_app.RDS")
 2. added this code to the global.R file: corpus_train <- readRDS("./corpus_train_app.RDS")
 3. uploded the RDS file along with the global.R, server.R and ui.R files.

Did I save the corpus_train SBO object correctly?

AND 

How do I ensure that Shiny will read the RDS file correctly, allowing the app to fully deploy and provide results?
