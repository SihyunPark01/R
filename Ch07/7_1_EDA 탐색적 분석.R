# 날짜 : 2021/09/29
# 이름 : 박시현
# 내용 : EDA와 Data 정제 - 탐색적 분석 실습하기 교재 p194

df_exam <- read.csv('../file/exam.csv')

View(df_exam)

#head(), tail() 상위 or 하위 6개
head(df_exam)
tail(df_exam)

#dim()
dim(df_exam)

#str()
str(df_exam)

#summary()
summary(df_exam)

#sum()
sum(df_exam$math)

#mean() 평균
mean(df_exam$english)


#교재 p194 실습 - 실습용 데이터 가져오기
getwd()
setwd("C:/Users/bigdata/Desktop/Workspace/R/Ch02")
dataset <- read.csv("../file/exam.csv", header = T)
dataset

#교재 p194 실습 - 전체 데이터 보기
print(dataset)
View(dataset)

#교재 p195 실습 - 데이터의 앞부분과 뒷부분 보기
head(dataset)
tail(dataset)

#교재 p196 실습 - 데이터 셋 구조 보기
names(dataset)
attributes(dataset)
str(dataset)


#교재 p197 실습 - 다양한 방법으로 데이터 셋 조회하기
dataset$english
length(dataset$english)
x <- dataset$english
y <- dataset$math
x
y
plot(dataset$english)
dataset["english"]
dataset[2]
dataset[c("english","science")]
