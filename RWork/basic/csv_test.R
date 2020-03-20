#csv는 기본  패키지로 사용가능
#csv를 읽기
mdf <- read.csv("csv_exam.csv")
mdf
mdf[2,2]
mdf[2,]
#dataframe에서 조건에 만족하는 데이터를 조회
m <- matrix(1:20,ncol = 4)
m
d <- data.frame(m)
d
myresult <- d[d$X3>=13,]
myresult
#조건에 만족하는 데이터를 result.csv로 저장
write.csv(myresult,file = "result.csv")


mdf
high_dataframe <- data.frame(mdf)
high_dataframe
high <- high_dataframe[high_dataframe$science>=80,]
high
mytotal <- c(sum(high[1,-c(1,2)]),sum(high[2,-c(1,2)]),sum(high[3,-c(1,2)]),sum(high[4,-c(1,2)]))
mytotal
myavg <- c(mean(as.integer(high[1,c(3:5)])),mean(as.integer(high[2,c(3:5)])),mean(as.integer(high[3,c(3:5)])),mean(as.integer(high[4,c(3:5)])))
myavg

mytotal
myavg
high1 <- cbind(high,mytotal)
high1
high2 <- cbind(high1,myavg)
high2
write.csv(high2,file = "csv_exam_result.csv")
