## deja vu from yesterday!

## Libraries
## let's confirm the second element is, in fact, the default library
library(fs)
library(here)

## create a data frame of your installed packages

#' Installed packages

ipkgs <- installed.packages() %>%
  as_tibble()

ipkgs



## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

small_ipkgs <- ipkgs %>%
  select(Package, LibPath, Version, Priority, Built)

small_ipkgs

## Get Jiggy with library(here)

here("data", "foo.csv")

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

write_csv(small_ipkgs, here("data", "installed-packages.csv"))

## when this script works, stage & commit it and the csv file
## PUSH!
