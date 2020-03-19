#R에서 사용하는 주석문
num = 10 #num이 100이다.
num
num <- 1000 #num변수에 1000을 저장하라는 의미
num
num==1000 #num이 1000과 같은지 비교 TRUE, FALSE
num==100
num!=1000
num>100
num<100

test <- "myR"
test
myR<-num
test <- myR
test
"fdsafdsa" #범위 지정후 shif+"하면 지정한 범위 "로 묶어준다


result1 <- 100 #숫자형
result1
result2 <- "test" #문자형
result2

#R에서 제공되는 함수를 이용할 수 있으며
#class함수는 타입을 확인
class(result1)
class(result2)
test <- as.character(result1)
test
class(test)
test <- as.numeric(result1)
test
class(test)
