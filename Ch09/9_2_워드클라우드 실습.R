#날짜 : 2021/09/30
#이름 : 박시현
#내용 : 정형과 비정형 데이터 처리 - 텍스트 시각화 실습 교재 p301

install.packages('koNLP')
install.packages('Sejong')
install.packages('hash')
install.packages('rJava')
install.packages('tau')
install.packages('RSQLite')
install.packages('devtools')
install.packages('dplyr')
install.packages('stringr')
install.packages('wordcloud')

library(KoNLP)
library(dplyr)
library(stringr)
library(wordcloud)


#텍스트(비정형데이터) 데이터 불러오기
txt_data <- readLines('../file/wordcloud_data.txt', encoding = 'UTF-8')
txt_data

#명사 추출
