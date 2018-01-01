bcdl <- read.csv('Baltimore_Crime_Data.csv')

head(bcd[is.na(bcd$Inside.Outside),])

head(bcdl[is.na(bcdl$Inside.Outside),])

unique(bcdl$Inside.Outside)

summary(bcdl$Inside.Outside)


bcd$CrimeGroup

posn_d <- position_dodge(width = 0.2)

bcd[is.na(bcd$Inside.Outside),]


bcd.sub.io<- subset(bcd, !is.na(bcd$Inside.Outside))

bcd[!is.na(bcd$Inside.Outside),]



ggplot(data =bcd[!is.na(bcd$Inside.Outside),] , aes(x = Inside.Outside, y=count, fill = CrimeGroup))+
  geom_histogram()


posn_d <- position_dodge(width = 1)


ggplot(data =bcd[!is.na(bcd$Inside.Outside),] , aes(x = Inside.Outside, fill= CrimeGroup))+
  geom_bar(position = 'dodge') +
  labs(title = "Number of incidents by Crime Group b\n", x = "Inside or Outside", y = "Number", color = "Crime Group\n")

ggplot(data =bcd[!is.na(bcd$Inside.Outside),] , aes(x = CrimeScore, fill = Inside.Outside))+
  geom_bar(position = 'dodge') +
  labs(title = "Number of incidents by Inside Outside b\n", x = "Crime Score", y = "Number", color = "Inside or Outside\n")



bcd[!is.na(bcd$District),]

bcd.District.CrimeScore <- bcd[!is.na(bcd$District),] %>% 
  group_by(District, Year) %>% 
  summarise(mean_CrimeScore = mean(as.integer(CrimeScore)))

colnames(bcd.District.CrimeScore)[1] <- "District"



ggplot(data = bcd.District.CrimeScore, aes(x = Year, y =mean_CrimeScore, color = District ) )+
  geom_line() + 
  labs(title = "Mean of Crime Score by District\n", x = "Year", y = "Average Crime Score", color = "Inside or Outside\n")




