#Import the file simpsons_episodes.csv in R (use read.csv(file,header = T)
getwd()
s_file <- read.csv("/Users/sayali/Downloads/simpsons_episodes.csv",header = TRUE)
head(s_file)
#What’s the mean of rating? (imdb_rating)
m_imd_rat <- mean(s_file$imdb_rating,na.rm = TRUE)
m_imd_rat
#What’s the standard deviation of rating? (imdb_rating)
s_d_imd_rat <- sd(s_file$imdb_rating,na.rm = TRUE)
s_d_imd_rat
#Plot the normal curve (to visualise the distribution of imdb_rating) using the command
#curve(dnorm(x,mean,sd),from = min, to = max). Use the command min and max to get the
#maximum value of imdb_rating.
curve(dnorm(x,m_imd_rat,s_d_imd_rat),from = min(s_file$imdb_rating,na.rm = TRUE), to = max(s_file$imdb_rating,na.rm = TRUE),col = 'pink',lwd = 3)
#Calculate the probabilities below:
#What’s the percentage of rating (imdb_rating) less or equal than 6?
pnorm(6,m_imd_rat,s_d_imd_rat)*100
#What’s the percentage of rating (imdb_rating) greater than 9?
pnorm(9,m_imd_rat,s_d_imd_rat,lower.tail = FALSE)*100
#What’s the percentage of rating (imdb_rating) between 7 and 8?
(pnorm(8,m_imd_rat,s_d_imd_rat) - pnorm(7,m_imd_rat,s_d_imd_rat))*100
#What’s the percentage of viewers (us_viewers_in_millions) greater than 30?
m_view_mil <- mean(s_file$us_viewers_in_millions,na.rm = TRUE)
m_view_mil

s_d_view_mil <- sd(s_file$us_viewers_in_millions,na.rm = TRUE)
s_d_view_mil

pnorm(30,m_view_mil,s_d_view_mil,lower.tail = FALSE) * 100

# What’s the percentage of viewers(us_viewers_in_millions) less than 10?
pnorm(10,m_view_mil,s_d_view_mil)*100

#What’s the percentage of viewers(us_viewers_in_millions) between 10 and 20?
(pnorm(20,m_view_mil,s_d_view_mil) - pnorm(10,m_view_mil,s_d_view_mil))*100