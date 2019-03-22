#
install.packages('dplyr')
library('dplyr')
gapminder<-read.csv("../../Desktop/data-shell/gapminder_data.csv")
View(gapminder)
gap_yr_gap<-gapminder%>%select(year,gdpPercap)
head(gap_yr_gap)
gap_1960s<-gapminder%>%filter(year>=1960&year<1970)
head(gap_1960s)
nrow(gap_1960s)
gap_yr_gdp_1960s <- gapminder %>% select(year,gdpPercap)%>%filter(year>=1960 & year<1970)
gap_yr_gdp_1960s
head(gap_yr_gdp_1960s)
gap_Africa<-gapminder%>%filter(continent == "Africa")%>%select(year,lifeExp,country)
nrow(gap_Africa)
names(gapminder)
gdp_by_continent<-gapminder%>%group_by(continent,year)%>%summarise(mean_gdp=mean(gdpPercap), sd_gdp=sd(gdpPercap))
gdp_by_continent
gdp_pop <- gapminder%>%mutate(gdp_billion=(gdpPercap*pop)/10^9)
head(gdp_pop)
#string with ggplot
gapminder%>%mutate(gdp_billions=(gdpPercap*pop)/10^9)%>%group_by(continent,year)%>%summarise(mean_gdp_billon=mean(gdp_billions))%>%ggplot(aes(x=year,y=mean_gdp_billon,color=continent))+geom_point()
library(ggplot2)
