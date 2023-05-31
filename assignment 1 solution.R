# answer number 1

library(tidyverse)
library(rvest)
library(xml2)
html <- read_html("https://www.moneyworks4me.com/best-index/nse-stocks/top-nifty50-companies-list/")
companyname <- html %>% html_nodes(".company-ellipses a") %>% html_text()
CMP <- html %>% html_elements("td span") %>% html_text() 
price_change <-  html %>% html_elements(".countRow") %>% html_text()
market_cap <-  html %>% html_elements("td") %>% html_text() 
Week_High <-  html %>% html_elements("best-from-res") %>% html_text() 
Week_Low  <-  html %>% html_elements("td span") %>% html_text() 
ROE <-  html %>% html_elements("notis") %>% html_text() 
P/E <-  html %>% html_elements("stock-data") %>% html_text() 
P/BV <-  html %>% html_elements(".sticky-header") %>% html_text() 
EV/EBITDA <-  html %>% html_elements("polite") %>% html_text() 
Y_sales_Gr <-  html %>% html_elements("polite") %>% html_text() 
Y_profit_Gr <- html %>% html_elements("stick") %>% html_text() 
data<- data.frame(companyname,CMP,price_change,market_cap,Week_High,Week_Low,ROE,P/E,P/BV,EV/EBITDA,Y_sales_Gr,Y_profit_Gr)
data


# answer number 4 (1)

MontyHall <- function() {
  car <- sample(1:3, 1) #door at which car 
  person_choice <- sample(1:3, 1)
  monty_choice <- sample(setdiff(1:3, c(car,person_choice)), 1)
  choices_changed <- setdiff(1:3, c(person_choice, monty_choice))
  choices_changed == car
}

#answer number 5

library(tidyverse)
library(rvest)
html <- read_html("https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/")
name <- html_elements (html, ".countdown-index")
name1 <- html_text(name)
name1
html <- read_html("https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/")
name <- html_elements (html, "h2")
name <- html_elements (name, "a")
name2<- html_text(name)
name2
html <- read_html("https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/")
name <- html_elements (html, ".tMeterScore")
name3<- html_text(name)
name3
html <- read_html("https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/")
name <- html_elements (html, ".subtle.start-year")
name4<- html_text(name)
name4

