cal.gu <- function(num=5){
 cnt=1
 while(cnt<=num){
  a <- sample(2:9,1)
  b <- sample(1:9,1)
  
  time1 = Sys.time()
  print(paste(a, "*", b, "= ?"))
  
  c = readline(prompt = "정답 : ")
  time2 = Sys.time()

  print(ifelse(a*b ==c, "정답입니다.", "땡!!!!!"))
  print(paste("계산시간은 ", round(time2-time1,1), "입니다."))
  cnt=cnt+1
 }
}
cal.gu(2)


