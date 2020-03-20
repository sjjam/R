#ggplot2패키지에서 제공되는 mpg데이터를 분석
####step1. mpg를 dataframe로 변경####
mpg <- as.data.frame(mpg)
mpg
####step2. mpg의 정보를 출력####
# 행 갯수, 열의 갯수, 위에서 10개, 끝에서 10개 출력
nrow(mpg)
ncol(mpg)
head(mpg,10)
tail(mpg,10)
####step3. mpg의 컬럼명을 변경####
# cty => city, hwy => highway
mpg <- rename(mpg, city=cty)
mpg
mpg <- rename(mpg, highway=hwy)
mpg
####step4. 파생변수 생성하기####
# total컬럼을 추가 => cty와 hwy의 합
# avg컬럼을 추가 => cty와 hwy의 평균
mpg$total <- mpg$city+mpg$highway
mpg
mpg$avg <- mpg$total/nrow(mpg)
mpg

####step5. 생성된 total을 가지고 요약정보 확인####
summary(mpg$total)
####step6. info컬럼 추가 ####
# total값을 이용해서 평가 - 30이상이면 pass, fail
mpg[,"info"] <- ifelse(test = mpg$total>=30,
                       yes = "pass",
                       no = "fail")
####step7. grade컬럼 추가 ####
# total값을 이용해서 평가 - 40이상이면 A, 35이상 B, 30이상 C, 나머지 D
for (i in 1:nrow(mpg)) {
  if (mpg[i,"total"]>=40) {
    mpg[i,"grade"] <- "A"
  }else if(mpg[i,"total"]>=35){
    mpg[i,"grade"] <- "B"
  }else if(mpg[i,"total"]>=30){
    mpg[i,"grade"] <- "C"
  }else {
    mpg[i,"grade"] <- "D"
  }
}
mpg

