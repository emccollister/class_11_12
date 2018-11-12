library(tidyverse)


download_link <- function(district, wave) {
  district <- str_remove(string = district, pattern = "-") %>%
    str_to_lower()
  x <- paste("https://raw.githubusercontent.com/TheUpshot/2018-live-poll-results/master/data/elections-poll-",
                district,
                "-",
                wave,
                ".csv",
                sep = "")
  
  read_csv(x)
  }



