# DataScienceCapstone_NLP
NLP_SwiftKey Next word prediction - CourseRA


<style>

/* slide titles */
.section .reveal .state-background {
background: white;
}
.section .reveal p {
font-family: Palatino Linotype;
color: rgb(57, 64, 71);
text-align:right; width:100%;
line-height: 0.1em;
#margin-top: 70px;
}
.section .reveal h1, .section .reveal h2, .section {
font-family: Palatino Linotype;
color: rgb(8, 38, 73);
margin-top: 50px;
}
.reveal pre code {
	font-family: Palatino Linotype;
  background-color: white;
  color: rgb(6, 114, 91);
  font-size: 30px;
  font-weight: bold
  #position: fixed; top: 90%;
  #text-align:center; width:100%;
  }
.reveal h3 { 
  font-size: 65px;
  color: rgb(57, 64, 71)  ;
}

/* heading for slides with two hashes ## */
.reveal .slides section .slideContent h2 {
   font-family: Palatino Linotype;
   font-size: 37px;;
   color: rgb(57, 64, 71);
}

/* ordered and unordered list styles */
.reveal ul, 
.reveal ol {
    font-family: Palatino Linotype;
    font-size: 34px;
    color: rgb(57, 64, 71);
    list-style-type: square;
  
  .reveal h1, .reveal h2, .reveal h3 {
  word-wrap: normal;
  -moz-hyphens: none;
  }

</style>
Capstone Final Project 
======================================================== 
font-family: 'palatino linotype'
transition: rotate


                            NLP SwiftKey Word Prediction
                         Coursera/Johns Hopkins University 
                                 Data Science Specialization
        

Mike Louricas  

April 1, 2018

![caption](Logos/logos.png)


Cleaning & Data Exploration
========================================================
font-family: 'palatino linotype'

Download and extract the 3 large text files from [Swiftkey Dataset] (https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip)

        * en_US.blogs.txt
        * en_US.news.txt
        * en_US.twitter.txt

Reduce size of files to 20K each, create a large corpus of the data and was then analyzed after removing numerous non-needed text characteristics

        * Update unused characters to space
        * Convert to lowercase
        * Remove Profane Language, punctuation, numbers, etc. 

N-grams were extracted from the corpus (uni, bi, tri) and then charted

Full detail provided here [Milestone] (https://rpubs.com/mlouricas/Milestone)

Algorithm & Model Building
========================================================
font-family: 'palatino linotype'

* N-gram model with back-off strategy was used for the Natural Language Process.  

* These data were then tokenized 3 times using 1-gram to 3-gram calculations using RWeka.

* The algorithm predicts the next word based on the last 3 text inputs the user entered then starts to search using the 3-gram.  If the next word isn't predicted, it selects the 2-gram, then 1-gram.  If nothing is found it falls back to a "default" of the word most often seen

<center>

![PredictionPic](Logos/Ngram.png)

</center>

Shiny App
========================================================
font-family: 'palatino linotype'

- Provides a text input box for user to type a line of short text

- Iterates from longest N-gram (3-gram) to shortest (1-gram)

- Predicts using the longest, most frequent, matching N-gram

- AFter multiple tests it was determined the most efficient method to keep up with performance expectations was to create small samples of each data set and keep them separated.  Allowing for the opportunity for 3 choices

- Detects words typed and predicts the most likey word from each of the three types of files within seconds.

- Has three tabs - Prediction, About, and Help

App Detail and Resources
========================================================
font-family: 'palatino linotype'
- Average response time under 2-3 seconds

- Application memory usage only 169 MB ( *mem_used()* )

- Application is running at: https://mlouricas.shinyapps.io/DataScience-CapstoneFinalProject/

- Github link for various code files is here: https://github.com/mlouricas/DataScienceCapstone_NLP 

*Code and app will be updated with any new features/improvements.*


