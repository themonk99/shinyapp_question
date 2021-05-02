library(sbo)
library(shiny)
library(processx)

blog <- readLines("en_US.blogs.txt", warn=FALSE, encoding="UTF-8")
twit <- readLines("en_US.twitter.txt", warn=FALSE, encoding="UTF-8")
news <- readLines("en_US.news.txt", warn=FALSE, encoding="UTF-8")

twit_sample <- sample(twit, length(twit)*.05)
news_sample <- sample(news, length(news)*.05)
blog_sample <- sample(blog, length(blog)*.05)

combined_sample <- c(twit_sample, blog_sample, news_sample)
combined_sample <- iconv(combined_sample, "UTF-8","ASCII", sub="")


corpus_train <- sbo_predictor(object = combined_sample, 
                              N = 3, 
                              dict = target ~ 0.75, 
                              .preprocess = sbo::preprocess, # Preprocessing transformation 
                              EOS = ".?!:;", 
                              lambda = 0.4,
                              L = 3L, # Number of predictions for input
                              filtered = "<UNK>"
)