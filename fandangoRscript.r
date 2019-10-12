############################################################
# R code to analyze fandango.csv
# authors: R Schultz, S Silver, S Kim
############################################################


############################################################
## load packages
install.packages("leaps")
install.packages("HH")
library(leaps)
library(mosaic)
library(HH)

## LOAD DATA
#SEJIN'S FILE IMPORT
fandango <- read.csv("C:/Users/kim3/Documents/R/MovieReleases/fandango.csv")
fandango <- read.csv("C:/Users/skim2/Documents/Documents/Programming/R/stat206/MovieReleases/fandango.csv")
View(fandango)

# SHANTI'S FILE IMPORT
fandango <- read.csv("")

# RYAN'S FILE IMPORT
fandango <- read.csv("")


############################################################
##### R CODE #####

# EDA
plot(MONTH~RT_user_norm, data = fandango) #SK
plot(RT_user_norm, data = filter(fandango, MONTH=="MARCH", YEAR=="2014",fandango)) #SK
fandango$YEAR #SK
rtuserbydumpmod <- lm(RT_user_norm~DUMPMONTH_BIN, data = fandango)#SK
rtuserbydumpmod #SK
summary(rtuserbydumpmod) #SK

fullMETA=regsubsets(Metacritic_user_nom~Metacritic_norm+ANIMATED_BIN+YEAR+MONTH_USE+MONTH_DIFF+Metacritic_user_vote_count, data=fandango) #SS
summary(fullMETA) #SS
fullIMDB=regsubsets(IMDB_norm~IMDB_user_vote_count+ANIMATED_BIN+YEAR+MONTH_USE+MONTH_DIFF, data=fandango) #SS
summaryHH(fullIMDB) #SS
fullRT=regsubsets(RT_user_norm~ANIMATED_BIN+YEAR+MONTH_USE+MONTH_DIFF+RT_norm, data=fandango) #SS
summaryHH(fullRT) #SS
tally(~MONTH_USE, data=fandango)#SS
plot(RT_user_norm~MONTH_USE,main="Rotten Tomatoes User Score by Month Released", data=fandango)
plot(Metacritic_user_nom~MONTH_USE, main="Metacritic User Scores by Month Released", data=fandango)
plot(IMDB_norm~MONTH_USE, main="IMDB User Scores by Month", data=fandango)
#of note, all of the ratings in Sept-Dec have less low ratings. These would all be 2014 data. Are the 2015 ratings overall more negative? I will check
mean(RT_user_norm~MONTH_USE, data=fandango)
mean(Metacritic_user_nom~MONTH_USE, data=fandango)
mean(IMDB_norm~MONTH_USE, data=fandango) #dump months do not appear to be relevant to this dataset
mean(RT_user_norm~YEAR, data=fandango)
mean(IMDB_norm~YEAR, data=fandango)
mean(Metacritic_user_nom~YEAR, data=fandango)
plot(Metacritic_user_nom~MONTH_DIFF, data=fandango)
summary(lm(Metacritic_user_nom~MONTH_DIFF, data=fandango))
plot(RT_user_norm~MONTH_DIFF, data=fandango)
summary(lm(RT_user_norm~MONTH_DIFF, data=fandango))
plot(IMDB_norm~MONTH_DIFF, data=fandango)
summary(lm(IMDB_norm~MONTH_DIFF, data=fandango))
plot(Metacritic_user_nom~log(Metacritic_user_vote_count), data=fandango)
summary(lm(Metacritic_user_nom~log(Metacritic_user_vote_count), data=fandango))
plot(IMDB_norm~log(IMDB_user_vote_count), data=fandango)
summary(lm(IMDB_norm~log(IMDB_user_vote_count), data=fandango))
summary(lm(log(Metacritic_user_vote_count)~MONTH_DIFF, data=fandango)) 
t.test(Metacritic_user_nom~ANIMATED_BIN, data=fandango)
t.test(IMDB_norm~ANIMATED_BIN, data=fandango)
t.test(RT_user_norm~ANIMATED_BIN, data=fandango)
#RT Correlation MAtrix and test
cor(fandango[c(16, 15)])
cor.test(RT_user_norm ~ RT_norm, data=fandango)
#Metacritic Correlation MAtrix and test
cor(fandango[c(18, 25, 17)])
cor.test(Metacritic_user_nom ~ Metacritic_user_vote_count, data = fandango)
cor.test(Metacritic_user_nom ~ Metacritic_norm, data = fandango)
#IMDb Correlation MAtrix and test
cor(fandango[c(19, 26)])
cor.test(IMDB_norm ~ IMDB_user_vote_count, data = fandango)
#Full model for metacritic
fullMETA = lm(Metacritic_user_nom ~ Metacritic_norm+ANIMATED_BIN + YEAR + Metacritic_user_vote_count, data = fandango )
#empty model for metacritic
emptyMETA = lm(Metacritic_user_nom ~ 1, data = fandango)
#mean squared error for metacritic
MSE = (summary(fullMETA)$sigma)^2
#backwards elimination of metacritic
step(fullMETA, scale=MSE, direction="backward")
#forwards selection of metacritic
step(emptyMETA, scope=list( upper=fullMETA ), scale=MSE, direction="forward")
#stepwise regression of metacritic
step(emptyMETA, scope=list( upper=fullMETA ), scale=MSE, direction="both")
#Full Model
fullIMDB = lm(IMDB_norm ~ IMDB_user_vote_count + ANIMATED_BIN + YEAR, data = fandango)
#Empty Model		Mean Squared Error
emptyIMDB = lm(IMDB_norm ~ 1, data = fandango)
MSE = (summary(fullIMDB)$sigma)^2
#Backwards Elimination	Forwards Selection		Stepwise Regression
step(fullIMDB, scale=MSE, direction="backward")
step(emptyIMDB, scope=list( upper=fullIMDB ), scale=MSE, direction="forward")
step(emptyIMDB, scope=list( upper=fullIMDB ), scale=MSE)
#Full Model
fullRT = lm(RT_user_norm ~ ANIMATED_BIN + YEAR + RT_norm, data = fandango)
#Empty Model		Mean Squared Error
emptyRT = lm(RT_user_norm ~ 1, data = fandango)
MSE = (summary(fullRT)$sigma)^2
#Backwards Elimination	Forwards Selection		StepWise Regression
step(fullRT, scale=MSE, direction="backward")
step(emptyRT, scope=list( upper=fullRT ), scale=MSE, direction="forward")
step(emptyRT, scope=list( upper=fullRT ), scale=MSE)

