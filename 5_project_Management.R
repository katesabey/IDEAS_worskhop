### Author: Kate Sabey          ###
### Date: May 16, 2018          ###
### Purpose: Project Management ###
### Data: MERS                  ###


###Load Packages###

library(ggplot2)
library(lubridate)


###Load Data###

#loads mers data
mers <- read.csv("cases.csv")
View(mers)


###Perform Analysis###

#creates bar plot (epidemic curve) of mers data
mers$onset2 <- ymd(mers$onset)
day0 <- min(na.omit(mers$onset2))
mers$epi.day <- as.numeric(mers$onset2 - day0)
ggplot(data=mers) +
  geom_bar(mapping=aes(x=epi.day)) +
  labs(x='Epidemic day', y='Case count')

#pushed changes to github
