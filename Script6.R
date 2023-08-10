library(maps)
map('world', c('south korea', 'north korea',
               'japan'))
xy <- locator(4)
polygon(xy$x, xy$y, col="tomato3")


map('world', c('south korea'))
xy <- locator(5)
points(xy$x, xy$y, pch=16, col="blue")
abline(h=38, lty=2)

xy <- locator(1)
text(xy$x, xy$y, labels="태풍의 위치")
