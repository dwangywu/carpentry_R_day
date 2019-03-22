library("ggplot2")
gapminder <-  read.csv(file="data-shell/gapminder_data.csv", header=TRUE)
View(gapminder)
head(gapminder)
tail(gapminder)
gapminder[900:905,5:6]
ggplot(gapminder,aes(x=gdpPercap,y=lifeExp))+geom_point()
ggplot(gapminder,aes(x=year,y=lifeExp,color=continent)group )+geom_point()

ggplot(gapminder,aes(x=year,y=lifeExp,by=country))+geom_line()
geom_point(color="blue")

ggplot(gapminder,aes(x=year,y=lifeExp,by=country))+
geom_point(color="blue")+geom_line()


ggplot(gapminder,aes(x=gdpPercap,y=lifeExp,by=country,color=continent),alpha=0.5)+
  geom_point()+scale_x_log10()+geom_smooth(method="lm")

  
gapminder <-  read.csv(file="~/Desktop/data-shell/gapminder_data.csv", header=TRUE)

ggplot(gapminder,aes(x=year,y=lifeExp,by=country))+
  geom_point()+geom_label(fontface="bold",size=10)

