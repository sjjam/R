library("dplyr")
exam <- read.csv("csv_exam.csv")
exam
#filter : 조건을 정의
#체이닝오퍼레이터(ctrl+shift+m)
exam %>% 
  filter(class==1) %>%
  filter(math>=50)

#select - 추출하고 싶은 변수를 정의
exam %>% select(-math)
exam %>% select(id,math,english)

exam %>%
  filter(class==1) %>% 
  select(id,math,science)

#arrange
exam %>% arrange(id)
exam %>% arrange(desc(id))
exam %>% arrange(class,desc(english))

#mutate - 파생변수 추가하기 (원본에 없는 컬럼 추가)
exam %>% 
  mutate(total=math+english+science) %>% 
  head()

exam %>% 
  mutate(total=math+english+science,
         mean = total/3) %>%
  head

exam %>% 
  mutate(total=math+english+science,
         mean = total/3,
         info = ifelse(science>70,"통과","재시험"))

exam %>% 
  group_by(class) %>% 
  summarise(math_sum = sum(math),
            math_mean = mean(math),
            math_mean = median(math),
            math_count = n())



