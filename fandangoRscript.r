############################################################
# R code to analyze fandango.csv
# authors: R Schultz, S Silver, S Kim
############################################################


############################################################
## load packages
library(mosaic)

## LOAD DATA
#SEJIN'S FILE IMPORT
fandango <- read.csv("C:/Users/skim2/Downloads/fandango.csv")
fandango <- read.csv("C:/Users/kim3/Documents/R/MovieReleases/fandango.csv")
View(fandango)

# SHANTI'S FILE IMPORT
fandango <- read.csv("")

# RYAN'S FILE IMPORT
fandango <- read.csv("")


############################################################
##### R CODE #####

# EDA
plot(MONTH~RT_user_norm, data = fandango)
plot(RT_user_norm, data = filter(fandango, MONTH=="MARCH", YEAR=="2014",fandango))
fandango$YEAR
rtuserbydumpmod <- lm(RT_user_norm~DUMPMONTH_BIN, data = fandango)
rtuserbydumpmod
summary(rtuserbydumpmod)
