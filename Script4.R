table(mtcars$vs) %>% barplot
table(mtcars$vs, mtcars$cyl) %>% 
  barplot(beside=T, legend=rownames(.))

dotchart(mtcars$mpg,
         group=factor(mtcars$cyl))

boxplot(mtcars$wt)
boxplot(mpg~vs, mtcars)
