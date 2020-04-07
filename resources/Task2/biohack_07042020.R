getwd()
#setwd("C:/Users/Hape/Documents/Biohackathon")

library(readxl)
data <- read_excel("Excel interventions.xlsx", sheet=1)

#add new colums Netherlands and Belgium

vector_new_country <- c("Netherlands", NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA )
vector_new_country2 <- c("United_States", NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA )
data <- rbind(data, vector_new_country)
data <- rbind(data, vector_new_country2)
data$Country

class(data$schools_universities)

names(data)[names(data)=="sport"] <- "sport_begin"

#begin of lockdown schools, universities and child care
names(data)[names(data)=="schools_universities"] <- "school_close_begin"

#correct dates of close downs
data$school_close_begin[data$Country=="Germany"] <- "2020-03-16"
data$school_close_begin[data$Country=="Netherlands"] <- "2020-03-16"
data$school_close_begin[data$Country=="France"]  <- "2020-03-16"

#add dates of planned stop
#data$schools_universities_close_stop[data$Country=="Germany"] <- "2020-04-20"
#data$schools_universities_close_stop[data$Country=="Netherlands"] <- "2020-05-03"

#define new vectors for restaurant close-down and planned stop
vector_restaurants_begin <- c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA)

#define vector border closed
vector_border_close <- c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA)

#define type border close
vector_border_type <- c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA)

#add vectors to data

data$rest_begin <- vector_restaurants_begin
data$border_close <- vector_border_close
data$border_type <- vector_border_type

#data$sport_end <- vector_sport_end
#data$rest_stop <- vector_restaurants_stop

#fill empty vector restaurant close begin
data$rest_begin[data$Country=="France"] <- "2020-03-15"
data$rest_begin[data$Country=="Germany"] <- "2020-03-23"
data$rest_begin[data$Country=="Netherlands"] <- "2020-03-16"
data$rest_begin[data$Country=="Belgium"] <- "2020-03-16"
data$rest_begin[data$Country=="Austria"] <- "2020-03-16"
##need to add: Switzerland, Italy, Sweden, Norway, United_Kingdom

#sports begin 
data$sport_begin[data$Country=="Netherlands"] <- "2020-03-12"
data$sport_begin[data$Country=="Belgium"] <- "2020-03-16"
##need to add rest of countries

#self-isolating if ill
data$self_isolating_if_ill[data$Country=="Netherlands"] <- "2020-03-12"
#need to add: United_States

#lockdown
## none in the Netherlands

#border close
data$border_close[data$Country=="Denmark"] <- "2020-03-14"
data$border_close[data$Country=="Spain"] <- "2020-03-17"
data$border_close[data$Country=="Germany"] <- "2020-03-16"
#data$border_close[data$Country=="Belgium"] <- ?
#data$border_close[data$Country=="Austria"] <- ?
data$border_close[data$Country=="Switzerland"] <- "2020-03-25"
#need to add: Sweden, Italy, United_Kingdom, Norway

#border type
## full: only citizens from country may travel
## partly: not all boarders closed or certain regulations in place that allow travel
## none, but selfquarantine: incoming travelers have to self quarantine

data$border_type[data$Country=="Denmark"]<- "full"
data$border_type[data$Country=="Spain"]<- "full"
data$border_type[data$Country=="Switzerland"]<- "full"
data$border_type[data$Country=="Germany"]<-"partly"
data$border_type[data$Country=="Austria"]<-"partly"
data$border_type[data$Country=="Belgium"]<-"none, but selfquarantine"
#data$border_type[data$Country=="United_Kingdom"] <-
#need to add: Sweden, Italy, Norway

#travel restrictions
data$travel_restrictions[data$Country=="United_States"] <- "2020-03-19"
