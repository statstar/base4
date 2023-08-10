barplot()
dotchart()
boxplot()
hist()

# -------------------------------------------------------------------------
mtcars$wt %>% stem # 줄기와 잎그림

mtcars$wt %>% hist
hist(mtcars$wt, breaks=20)
hist(mtcars$wt, breaks=3)
hist(mtcars$wt)
hist(mtcars$wt, seq(1.5,5.5,0.5))
hist(mtcars$wt, c(1.5,2,3,3.5,5,6))
cut(mtcars$wt, c(1.5,2,3,3.5,5,6)) %>% table %>% 
  barplot


mtcars$wt %>% density %>% plot
mtcars$wt %>% ecdf %>% plot

# -------------------------------------------------------------------------
plot(c(1,5,3,4,6))
plot(x= 1:5, y=c(1,5,3,4,6), type="p")
# type = "l", "b", "o", "c", "h", "s", "S", "n"
points(2, 3, pch=16, col="blue", cex=3)
points(4, 4, pch=15, col="red", cex=2)

text(1,6, labels="R 기초")

legend("right", fill=c("yellow","green"),
       legend=c("대전","대구"))

abline(h=3, lty=2)
abline(v=3.5, lty=2, col="blue")
abline(a=0, b=1) #a= 절편, b=기울기

x = 1:5
y1 = 5:1   #2020
y2 = x^2   #2021
y3 = x %>% sqrt #2022

plot(x, y2, type="b")
lines(x, y1, type="b", col="red")
lines(x, y3, type="b", col="blue")

legend("topleft", lty=1, pch=1,
       col=c("red","black","blue"),
       legend=c(2020,2021,2022))
text(x, y2, pos=1, labels=y2)

rect(2,10,3,15, col="gold")

plot(mpg~wt, mtcars)
lm(mpg~wt, mtcars) %>% abline(., col="blue")

x1 <- seq(0,2*pi, length.out=100)
x.a <- cos(x1) +3
y.a <- sin(x1) +20
polygon(x.a, y.a, col="green")

barplot(c(7.5,8,7.2,9,8,7.7,7.3))
abline(h=8, lty=2, col="red")

### 
범주형 * 범주형 : table, barplot
범주형 * 연속형 : boxplot, group_by, summarise
연속형 * 연속형 : plot, cor, lm





