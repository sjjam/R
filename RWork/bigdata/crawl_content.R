#save한거 가져오기
load(file = "crawl_data.RData")
final_data
final_data[,3]

url_list <- final_data[,3]
class(url_list)
url_list <- as.character(url_list)
class(url_list)
#웹페이지 데이터 가져오기
contentdata <- readLines(url_list[1],encoding = "UTF-8")
contentdata

#원하는 부분만 가지고 오기
start = which(str_detect(contentdata,"post_content"))
end = which(str_detect(contentdata,"post_ccls"))
start
end
content_filter_data <- contentdata[start:end]
content_filter_data

#데이터 정제하기
#1. 벡터로 리턴하므로 한 개로 합치기
content_filter_data <- paste(content_filter_data,collapse = "")
content_filter_data
#2. 불필요한 기호나 태그 없애기
#태그 없애기
content_filter_data <- gsub("<.*?>","",content_filter_data)
content_filter_data
content_filter_data <- gsub("\t|&nbsp;","",content_filter_data)
content_filter_data











####내가 한거####
url_exam <- final_data[1,3]
url_data_exam <- readLines(url_exam,encoding = "UTF-8")
url_data_exam

str_detect(url_data_exam,"<p>")
filter_data_exam <- url_data_exam[str_detect(url_data_exam,"<p>")]
filter_data_exam
content <- str_extract(filter_data_exam,"(?<=<p>).*(?=</p>)")
content
content <- gsub("<br>","",content)
content
paste(content[1:5],content[2],content[3],content[4],content[5])
