## A simple script I made to make a list of those citing a paper, using Hadley Wickham's Rvest package

## The original application was to map social networks among academics.
## Here, we put in a Harry Potter book title (the Google Scholar page URL), and R outputs
## a list of books and articles that cite J.K. Rowling's The Goblet of Fire

library(rvest)

##Google scholar webpage goes here
webpage <- read_html("https://scholar.google.com/scholar?cites=16776580578273724101&as_sdt=4005&sciodt=1,6&hl=en")


##This part of the code returns the PAPER TITLES of those who have cited original input, and extracts to text 
PaperTitles <- webpage %>% html_nodes ("h3.gs_rt") %>% html_text()

##List the PAPER TITLES:
PaperTitles


##This part returns the author names
AuthorJournalYearNames <- webpage %>% html_nodes ("div.gs_a") %>% html_text()

##List the AUTHORS,JOURNAL, YEAR PUBLISHED:
AuthorJournalYearNames









