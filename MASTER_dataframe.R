library(dplyr)
library(janitor)
library(readr)
library(ggplot2)


ONE <- read.csv('CSVs/LA_LIGAcsvs/ONE.csv')
TWO <- read.csv('CSVs/LA_LIGAcsvs/TWO.csv')
THR <- read.csv('CSVs/LA_LIGAcsvs/THREE.csv')
FOUR <- read.csv('CSVs/LA_LIGAcsvs/FOUR.csv')
FIVE <- read.csv('CSVs/LA_LIGAcsvs/FIVE.csv')
SIX <- read.csv('CSVs/LA_LIGAcsvs/SIX.csv')
SEV <- read.csv('CSVs/LA_LIGAcsvs/SEVEN.csv')
EIGHT <- read.csv('CSVs/LA_LIGAcsvs/EIGHT.csv')
NINE <- read.csv('CSVs/LA_LIGAcsvs/NINE.csv')
TEN <- read.csv('CSVs/LA_LIGAcsvs/TEN.csv')
ELVN <- read.csv('CSVs/LA_LIGAcsvs/ELEVEN.csv')
TWLV <- read.csv('CSVs/LA_LIGAcsvs/TWELVE.csv')
THRTN <- read.csv('CSVs/LA_LIGAcsvs/THIRTEEN.csv')
FRTN <- read.csv('CSVs/LA_LIGAcsvs/FOURTEEN.csv')

files <- list(ONE, TWO, THR, FOUR, FIVE, SIX, SEV,
              EIGHT, NINE, TEN, ELVN, TWLV, THRTN, FRTN)


process_csv <- function(df) {
  df <- df %>% 
    row_to_names(row_number = 1) %>%  
    clean_names()
  
  df$min <- as.numeric(gsub(",", "", df$min))
  
  return(df)
}

master <- bind_rows(lapply(files, process_csv))
