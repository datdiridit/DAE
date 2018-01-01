library("data.table")
library("ggplot2")
library("dplyr")
library("ggplot2")
library("ggmap")
library("maps")
library("mapdata")
library("sqldf")


#Crime Group
#Crime Score
#Crime TimeLine

#Crime Group yil iliskisi
#Crim Score time line iliskisi
#adj crime score -- crime score * crime sayisi bunu bogle bazli bunu boyle timeline bazli kirabiliriz
# crime timeline da cok null kayit var. Crime time integer a cevrilirken patladi sanirim

ggplot(data = bcd ) + 
  aes(x=bcd$CrimeScore) +
  geom_bar()

ggplot(data = bcd ) + 
  aes(x=bcd$CrimeGroup, y=count) +
  geom_histogram()

table(bcd$CrimeGroup)


summary(bcd$CrimeTimeLine)

unique(bcd$CrimeTimehour)

ggplot(data = bcd) + 
  aes(x=bcd$CrimeTimeLine) +
  geom_bar()

x <- bcd[is.na(bcd$CrimeTimeLine)==TRUE,]

as.integer(substr(bcd$CrimeTime,0,2))

x[,2]

table(x$CrimeTime)

as.integer(substr(x$CrimeTime,0,2))

## crime skoru yapilabilir

bcd.new <- BCD %>%
  group_by(bcd$crime,Year) %>%
  summarise(count=n()) %>%
  arrange(desc(count))



