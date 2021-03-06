test1 <- data.frame(id=c(1,2,3,4,5),
                    mid_jumsu = c(77,56,99,100,99))
test2 <- data.frame(id=c(1,2,3,4,5),
                    final_jumsu = c(77,56,99,100,99))
test1
test2
final_data <- left_join(test1,test2,by = "id")
final_data

namedata <- data.frame(class=c(1,2,3,4,5),
                       teacher=c("kim","lee","park","jang","hong"),
                       stringsAsFactors = F)
str(namedata)
exam
exam_new <- left_join(exam,namedata,by="class")
exam_new

groupA <- data.frame(id=c(1,2,3,4,5),
                    mid_jumsu = c(77,56,99,100,99))
groupB <- data.frame(id=c(6,7,8,9,10),
                    mid_jumsu = c(77,56,99,100,99))

group_total <- bind_rows(groupA,groupB)
group_total

library("ggplot2")
mpg
mpg %>% 
  group_by(class) %>%
  summarise(ctymean=mean(cty))

mpg %>% 
  group_by(class) %>%
  summarise(ctymean=mean(cty)) %>% 
  arrange(desc(ctymean))

head(mpg %>% 
  group_by(hwy) %>% 
  summarise(hwymean=mean(hwy)) %>% 
  arrange(desc(hwymean)),3)

mpg %>% 
  filter(class=="compact") %>%
  group_by(manufacturer) %>%
  summarise(carn=n()) %>% 
  select(manufacturer,carn) %>% 
  arrange(desc(carn))
  