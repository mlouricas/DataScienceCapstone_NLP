
library(shiny)
library(caret)
# Adds support for graphical tooltips and popovers, in order to enrich de UI.
library(shinyBS) 
# Adds Bootstrap themes to a Shiny app.
library(shinythemes)


shinyUI(
        
        navbarPage(
                
                "NLP Data Science SwiftKey Next Word Prediction",
                
                theme = shinytheme("flatly"),
                
                tabPanel(
                        
                        "Prediction",
                        
                        
                        pageWithSidebar(
        
                        headerPanel("Next Word Text Prediction"),
        
                                sidebarPanel(
                
                                        textInput("text", label = h3("Text input"), 
                                        value = "Enter Some Text"),
                
                                         h6(em("Note: Please do not use numbers and/or Special Characters ")),
                
                                submitButton("Predict")
                
                                              ),
                        mainPanel(
                                h4("Next word prediction - Blogs"),
                                verbatimTextOutput("blogs_pred"),       
                                h4("Next word prediction - Twitter:"),
                                verbatimTextOutput("twitter_pred"),
                                h4("Next word prediction - News"),
                                verbatimTextOutput("news_pred")
                                
                                ))
                        ),
                 
                 
                 tabPanel(
                         
                         "Help",
                         
                         
                         p("By entering a short line of text and hitting enter or the Predict button, the user can predict the next word from the three provided files."),
                         
                         p("Dataset used by the application are from HCCorpora"),
                         a(href = "https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip", "Swiftkey Dataset"),
                         br(),
                         p("comprises of datasets in 3 different languages. I chose..."),
                         tags$div("Datasets are:",
                                  tags$ul(
                                          tags$li(strong("en_us.blogs"), "US-English Blogs"),
                                          tags$li(strong("en_us.twitter"), "US-English Twitter"),
                                          tags$li(strong("en_us.news"), "US-English News")
                                          
                                          
                                          )
                                  
                                  )
                         
                        ),
                 
                 tabPanel(
                         
                         "About",
                         
                         h3("CourseRA (Johns Hopkins) Data Science Program"),
                        
                         h3("Capstone Final Project - Shiny App and Pitch Presentation"),
                         
                         br(),
                         
                         h4("Author: Mike Louricas - April 1, 2018"),
                         
                         br(),
                         
                         p("Source code of this application is available at",
                           a(href = "https://","https://github.com/"))
                         )
                )
        )

                         
              