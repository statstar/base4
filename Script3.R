# 이상치 확인
boxplot(mtcars$wt)

# 집단간 분포 비교
boxplot(mpg~gear, mtcars, varwidth=T)

library(vioplot)
vioplot(mpg~gear, mtcars)

# 집단이 여러개도 가능
boxplot(mpg~gear+cyl, mtcars)

x1 <- runif(10)
x2 <- rnorm(30)
x3 <- rexp(50)

boxplot(x1, x2, x3)

ddf = data.frame(NUMS = rnorm(500), GRP = sample(LETTERS[1:5],500,replace=T))
boxplot(NUMS ~ GRP, data = ddf, lwd = 2, ylab = 'NUMS')
stripchart(NUMS ~ GRP, vertical = TRUE, data = ddf, 
           method = "jitter", add = TRUE, pch = 20, col = 'blue')

set.seed(3)
z <- round(rnorm(50) * 10)
summary(z)
z %>% hist
z %>% boxplot

z[50] <- 40       # 50번째 데이터를 40으로 치환하여 이상치를 만듦
z[49] <- 200
summary(z)
z %>% boxplot
boxplot(z, range=0)
boxplot(z, range=1.5) -> box1
boxplot(z, range=5)
boxplot(z, range=5, outcol="red", outpch=16)

box1$out

mtcars$wt %>% boxplot -> box1
mtcars %>% 
  filter(wt %in% box1$out) 

# wt 삭제
mtcars %>% 
  filter(!wt %in% box1$out) 

# wt 이상치를 정상범위 최대치로 치환
ifelse(mtcars$wt %in% box1$out, 5.250, mtcars$wt)

xy <- c(1,2,3,4,5,NA, 7,8,9,10)
mean(xy, na.rm=T)
ifelse(is.na(xy), mean(xy, na.rm=T), xy) %>% floor














       
























