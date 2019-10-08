# MOVIE RELEASE Readme

This folder contains the data to analyze movies in 2014 and 2015.

This data was compiled by FiveThirtyEight and includes every film that had a Rotten Tomatoes rating, a RT user rating, a Metacritic score, a Metacritic User score, and IMDb score, and at least 30 fan reviews on Fandango, as of August 24, 2015.
The original data an be found at [this Github link](https://github.com/fivethirtyeight/data/tree/master/fandango).

## Summary of Variables

Header | Definition
---|--------
`FILM` | Name of the released film
`YEAR` | Year that the film was released in its home country
`MONTH` | The month that the film was released in its home country
`GENREA` | The first genre listed on the IMDb page for the film, unless it is animated; animation is noted in the `ANIMATED_BIN` variable
`GENREB` | The second or next genre listed on the IMDb page for the film
`ANIMATED_BIN` | Whether the film is animated or not; 0 for no, 1 for yes
`DUMPMONTH_BIN` | Whether the film was released in a "dump month" - January, February, August, or September
`RottenTomatoes` | The Rotten Tomatoes Tomatometer score  for the film
`RottenTomatoes_User` | The Rotten Tomatoes user score for the film
`Metacritic` | The Metacritic critic score for the film
`Metacritic_User` | The Metacritic user score for the film
`IMDB` | The IMDb user score for the film
`Fandango_Stars` | The number of stars the film had on its Fandango movie page
`Fandango_Ratingvalue` | The Fandango ratingValue for the film, as pulled from the HTML of each page. This is the actual average score the movie obtained.
`RT_norm` | The Rotten Tomatoes Tomatometer score  for the film , normalized to a 0 to 5 point system
`RT_user_norm` | The Rotten Tomatoes user score for the film , normalized to a 0 to 5 point system
`Metacritic_norm` | The Metacritic critic score for the film, normalized to a 0 to 5 point system
`Metacritic_user_nom` | The Metacritic user score for the film, normalized to a 0 to 5 point system
`IMDB_norm` | The IMDb user score for the film, normalized to a 0 to 5 point system
`RT_norm_round` | The Rotten Tomatoes Tomatometer score  for the film , normalized to a 0 to 5 point system and rounded to the nearest half-star
`RT_user_norm_round` | The Rotten Tomatoes user score for the film , normalized to a 0 to 5 point system and rounded to the nearest half-star
`Metacritic_norm_round` | The Metacritic critic score for the film, normalized to a 0 to 5 point system and rounded to the nearest half-star
`Metacritic_user_norm_round` | The Metacritic user score for the film, normalized to a 0 to 5 point system and rounded to the nearest half-star
`IMDB_norm_round` | The IMDb user score for the film, normalized to a 0 to 5 point system and rounded to the nearest half-star
`Metacritic_user_vote_count` | The number of user votes the film had on Metacritic
`IMDB_user_vote_count` | The number of user votes the film had on IMDb
`Fandango_votes` | The number of user votes the film had on Fandango
`Fandango_Difference` | The difference between the presented Fandango_Stars and the actual Fandango_Ratingvalue
