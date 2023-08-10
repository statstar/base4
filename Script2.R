rownames(mtcars)
barplot(mtcars$mpg, names.arg=rownames(mtcars))
dotchart(mtcars$mpg, 
         labels=rownames(mtcars),
         group=factor(mtcars$cyl))

mtcars %>% 
  arrange(mpg) -> mtcars1
dotchart(mtcars1$mpg, 
         labels=rownames(mtcars), cex=0.7,
         group=factor(mtcars$gear))
mtcars %>% 
  group_by(gear) %>% 
  summarise(mean=mean(mpg)) -> result1
result1$mean
dotchart(mtcars1$mpg, 
         labels=rownames(mtcars), cex=0.7,
         group=factor(mtcars$gear),
         gdata=result1$mean)

kbo <- read.table("clipboard", header=T)
names(kbo)
kbo %>% arrange(AVG) -> kbo
dotchart(kbo$AVG, 
         labels=kbo$선수명, cex=0.7,
         group=factor(kbo$팀명))
kbo$팀명 %>% factor
kbo$팀명 %>% unique
kbo$팀명 <- factor(kbo$팀명, levels=c("한화","KIA","두산", "KT",
                        "롯데","삼성","LG","NC","SSG","키움"))

dotchart(kbo$AVG, labels=kbo$선수명, cex=0.7,
         group=factor(kbo$팀명))



