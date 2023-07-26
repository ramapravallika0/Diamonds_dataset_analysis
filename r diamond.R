read.csv("C:/Users/admin/R/diamonds.csv")->diamonds
View(diamonds)
View(diamonds)
diamonds%>%select(1,2)->d_1
diamonds%>%select(3:6)->d_2
diamonds%>%select("carat","cut","price")->d_3
diamonds%>%select(starts_with("g"))->d_4
diamonds%>%filter(price>330)->d_5
diamonds%>%select("carat","price","depth")
diamonds%>%select("carat","price","depth"&price>335)->d_6
diamonds%>%select("carat","price","depth")%>%filter(price>330)->d_6
diamonds%>%filter("carat","price","depth")%>%filter(carat="0.26" & price="337")->d_7
diamonds%>%filter("carat","price","depth")%>%filter(carat=="0.26" & price=="337")->d_7
diamonds%>%filter(price","depth")%>%filter(carat=="0.26" & price=="337")->d_7
diamonds%>%filter("price","depth")%>%filter(carat=="0.26" & price=="337")->d_7
ggplot(data=diamonds,aes(x=price))+geom_histogram()
ggplot(data=diamonds,aes(x=price))+geom_histogram(fill="green")
ggplot(data=diamonds,aes(x=price))+geom_histogram(fill="green",col="orange")
ggplot(data=diamonds,aes(x=cut))+geom_bar()
ggplot(data=diamonds,aes(x=cut))+geom_bar(fill="palegreen")
ggplot(data=diamonds,aes(x=cut,fill=cut))+geom_bar()
ggplot(data=diamonds,aes(x=carat,y=price))+geom_point()
ggplot(data=diamonds,aes(x=carat,y=price,col=cut))+geom_point()
ggplot(data=diamonds,aes(x=clarity,y=carat))+geom_boxplot()
ggplot(data=diamonds,aes(x=clarity,y=carat,fill=clarity))+geom_boxplot()
ggplot(data=diamonds,aes(x=clarity,y=carat,fill=cut))+geom_boxplot()
ggplot(data=diamonds,aes(x=clarity,y=carat,fill=cut))+geom_boxplot()+facet_grid(~cut)

