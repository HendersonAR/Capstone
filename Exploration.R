library(dplyr)
library(janitor)
library(readr)
library(ggplot2)

##2023/2024 DATA

one <- read_csv("CSVs/first200.csv")
two <- read_csv("CSVs/second200.csv")
thr <- read_csv("CSVs/third200.csv")


files <- list(one, two, thr)

process_csv <- function(df) {
  df <- df %>% 
    row_to_names(row_number = 1) %>%  
    clean_names()
  
  df$min <- as.numeric(gsub(",", "", df$min))
  
  return(df)
}

master <- bind_rows(lapply(files, process_csv))

ggplot(master, aes(x = min)) +  
  geom_density(fill = "lightblue", alpha = 0.6) +  
  geom_vline(aes(xintercept = median(min, na.rm = TRUE)), 
             color = "red", linetype = "dashed", size = 1) +  
  geom_vline(aes(xintercept = quantile(min, 0.25, na.rm = TRUE)), 
             color = "gray", linetype = "dashed", size = 1) +  # Q1
  geom_vline(aes(xintercept = quantile(min, 0.75, na.rm = TRUE)), 
             color = "gray", linetype = "dashed", size = 1) +  # Q3
  labs(title = "Density Plot of Minutes for La Liga 23/24",
       x = "Minutes",
       y = "Density") +  
  theme_minimal()

## 2022/2023 DATA

uno <- read_csv("CSVs/uno.csv")
dos <- read_csv("CSVs/dos.csv")
tres <- read_csv("CSVs/tres.csv")


docu <- list(uno, dos, tres)

process_csv <- function(df) {
  df <- df %>% 
    row_to_names(row_number = 1) %>%  
    clean_names()
  
  df$min <- as.numeric(gsub(",", "", df$min))
  
  return(df)
}

maestro <- bind_rows(lapply(docu, process_csv))

ggplot(maestro, aes(x = min)) +  
  geom_density(fill = "lightblue", alpha = 0.6) +  
  geom_vline(aes(xintercept = median(min, na.rm = TRUE)), 
             color = "red", linetype = "dashed", size = 1) +  
  geom_vline(aes(xintercept = quantile(min, 0.25, na.rm = TRUE)), 
             color = "gray", linetype = "dashed", size = 1) +  # Q1
  geom_vline(aes(xintercept = quantile(min, 0.75, na.rm = TRUE)), 
             color = "gray", linetype = "dashed", size = 1) +  # Q3
  labs(title = "Density Plot of Minutes for La Liga 22/23",
       x = "Minutes",
       y = "Density") +  
  theme_minimal()


#
un <- read_csv("CSVs/un.csv")
deux <- read_csv("CSVs/deux.csv")
trois <- read_csv("CSVs/trois.csv")


files <- list(un, deux, trois)

process_csv <- function(df) {
  df <- df %>% 
    row_to_names(row_number = 1) %>%  
    clean_names()
  
  df$min <- as.numeric(gsub(",", "", df$min))
  
  return(df)
}

maitre <- bind_rows(lapply(files, process_csv))

ggplot(maitre, aes(x = min)) +  
  geom_density(fill = "lightblue", alpha = 0.6) +  
  geom_vline(aes(xintercept = median(min, na.rm = TRUE)), 
             color = "red", linetype = "dashed", size = 1) +  
  geom_vline(aes(xintercept = quantile(min, 0.25, na.rm = TRUE)), 
             color = "gray", linetype = "dashed", size = 1) +  # Q1
  geom_vline(aes(xintercept = quantile(min, 0.75, na.rm = TRUE)), 
             color = "gray", linetype = "dashed", size = 1) +  # Q3
  labs(title = "Density Plot of Minutes for La Liga 17/18",
       x = "Minutes",
       y = "Density") +  
  theme_minimal()



##

master_q1 <- quantile(master$min, 0.25, na.rm = TRUE)

maestro_q1 <- quantile(maestro$min, 0.25, na.rm = TRUE)

maitre_q1 <- quantile(maitre$min, 0.25, na.rm = TRUE)


(master_q1 + maestro_q1 + maitre_q1)/3


mean(master$min)
sum(master$min > 1235)/length(master$min)

mean(maestro$min)
sum(maestro$min > 1235)/length(maestro$min)

mean(maitre$min)
sum(maitre$min > 1235)/length(maitre$min)

median(maestro$min)
