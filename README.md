# MOVIE RELEASE Readme

This folder contains the data to analyze movies in 2014 and 2015.

This data was compiled by FiveThirtyEight and includes every film that had a Rotten Tomatoes rating, a RT user rating, a Metacritic score, a Metacritic User score, and IMDb score, and at least 30 fan reviews on Fandango, as of August 24, 2015.
The original data an be found at [this Github link](https://github.com/fivethirtyeight/data/tree/master/fandango).

Month, the binary animation variable, and binary dump month variable were added to the completed FiveThirtyEight dataset, and are current, as of October 8, 2019. The figures for month and the `ANIMATED_BIN` variable were taken from [IMDb](https://www.imdb.com/?ref_=nv_home), and the animation and dump month variables were derived from this information. Genre and MPAA rating information was also added to the completed FiveThirtyEight dataset, and are current, as of 11 October 2019. `BOMGENRE`, `MPAA`, and most of the binary variables indicating genre were taken from [Box Office Mojo](https://www.boxofficemojo.com/), and these variables were derived from that information.

## Summary of Variables

Header | Definition
---|--------
`FILM` | Name of the released film
`YEAR` | Year that the film was released in its home country
`MONTH_USE` | The month that the film was released in its home country, encoded as a numerical variable: (January = 1) (February =2) (March=3) (April =4) (May=5) (June=6) (July = 7) (August = 8) (September =9) (October =10) (November =11) (December =12)
`BOMGENRE` | The genre listed on the [Box Office Mojo](https://www.boxofficemojo.com/) page for the film, unless it is animated; animation is noted in the `ANIMATED_BIN` variable
`MPAA` | The rating given by the MPAA for the film; see bottom of README.md for important information on MPAA ratings!
`ANIMATED_BIN` | A binary variable for the *Animation* genre, as defined by IMDb. (1 = TRUE) (0 = FALSE)
`NO_USE_DUMPMONTH_BIN` | Whether the film was released in a "dump month" - January, February, August, or September
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
`MONTH_WRONG_NO_USE` | *Will be updated soon*
`MONTH_DIFF` | *Will be updated soon*
`BIN_ACTION_ADVENTURE` | A binary variable for the *action/adventure* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_ACTION` | A binary variable for the *Action* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_ADVENTURE` | A binary variable for the *Adventure* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_ANIMATION` | A binary variable for the *Animation* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_COMEDY` | A binary variable for the *Comedy* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_CRIME` | A binary variable for the *Crime* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_DRAMA` | A binary variable for the *Drama* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_FAMILY` | A binary variable for the *Family* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_FANTASY` | A binary variable for the *Fantasy* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_FOREIGN` | A binary variable for the *Foreign* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_HORROR` | A binary variable for the *Horror* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_MUSICAL` | A binary variable for the *Musical* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_ROMANCE` | A binary variable for the *Romance* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_SCIFI` | A binary variable for the *Sci-Fi* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)
`BIN_THRILLER` | A binary variable for the *Thriller* genre, as defined by Box Office Mojo. (1 = TRUE) (0 = FALSE)

## NOTES

On the MPAA:
MPAA ratings cannot and should not be taken at face value; the reason that a movie has received a particular rating varies wildly, and the MPAA tends to penalize certain themes far more harshly than other themes. For example, movies with scenes that show sexual themes tend to receive higher ratings compared to scenes that show graphic violence. You should also consider that the MPAA is primarily funded from six major film studios, Disney, Paramount, Sony, Fox, Universal, and Warner Bros., and despite their claims that they do not have bias in judgements, many contest this. You can find more information on some issues with the system at [this Slate article](https://slate.com/business/2011/02/mpaa-ratings-and-independents-bias-proved.html). -SK
