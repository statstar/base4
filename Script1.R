barplot(c(5,10,6))

library(dplyr)
mtcars$gear %>% table %>% barplot

mtcars %>% 
  group_by(gear) %>% 
  summarise(n=n(), mean=mean(mpg)) -> tab1

barplot(tab1$mean, names.arg = c("3단","4단","5단"),
        main="The mpg by gear",
        xlab = "기어", ylab = "miles per gallon",
        col=c("white","gray70","gold"),
        ylim=c(0,28), cex.axis = 0.5, cex.names=0.3,
        axes=F) -> bar1

 text(bar1, tab1$mean, labels=round(tab1$mean,1),
 pos =3, cex=1.5)

table(mtcars$gear, mtcars$cyl) -> tab1
barplot(tab1, beside=T, legend=rownames(tab1)) -> b1
text(b1, tab1, labels=tab1, pos=3)

library(tidyr) 
mtcars %>% 
  group_by(gear, cyl) %>% 
  summarise(mean=mean(mpg)) %>% 
  pivot_wider(id_cols=gear, 
              names_from=cyl, 
              values_from=mean) -> out1
as.matrix(out1[-1]) -> out2
barplot(out2, beside=T, legend=c(3,4,5), ylim=c(0,32)) -> bar1
text(bar1, out2, labels=round(out2,1), pos=3)

barplot(c(5,10,6), horiz=T)
barplot(c(-3,2,4))

apt <- c(14.6,10.6,7.9,6.9,6.5)
barplot(apt, width=c(1,2,3,4,5))

rent = c(-2685,-1812,-1025,-704,-548,-436,
-436,-201,142,172,748,901,930,1192,1934,3387)
name = c("울산","경남","경북","충북",
         "충남","부산","경기","강원",
         "전북","인천","대전","대구",
         "세종","전남","광주","서울")
barplot(rent, names.arg=name) -> bar1
col1 = ifelse(rent>0,"tomato2","lightblue")
pos1 = ifelse(rent>0, rent+150, rent-150)

barplot(rent, ylim=c(-3000,4000),
        names.arg=name, col=col1) -> bar1
text(bar1, pos1, labels=rent)
title("2019년 아파트 전세 재계약 비용")






