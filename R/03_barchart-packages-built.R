## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## Load Libraries
library(tidyverse)
library(here)

## read that csv into a data frame, then ...
(apt_freqtable <-  read_csv(here("data", "add-on-packages-freqtable.csv")))


## if you use ggplot2, code like this will work:
freq_bar <- ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_bar(stat = "identity")

freq_bar
## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help

ggsave(here("figs", "built-barchart.png"), plot = freq_bar)


## YES overwrite the file that is there now
## that came from me (Jenny)

## when this script works, stage & commit it and the png file
## PUSH!
