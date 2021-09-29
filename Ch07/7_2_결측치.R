# 날짜 : 2021/09/29
# 이름 : 박시현
# 내용 : EDA와 Data 정제 - 결측치 실습하기 교재 p200

df_exam <- read.csv('../file/exam_na.csv')
View(df_exam)

#결측치 존재여부 확인
is.na(df_exam)

#결측치를 갖는 행 제거
df_exam_new <- df_exam %>% filter(!is.na(math) & !is.na(english) & !is.na(science))
View(df_exam_new)

#기초 통계분석
df_exam_new %>% mutate(total=math+english+science, mean=total/3) %>% 
                arrange(desc(total))


#교재 p201 실습 - summary() 함수를 사용하여 결측치 확인하기
summary(df_exam)
sum(df_exam)

#교재 p201 실습 - sum() 함수의 속성을 이용하여 결측치 제거하기
sum(df_exam, na.rm = T) #na.rm = T가 결측치 제거하라는 속성


#교재 p201 실습 - 결측치 제거 함수를 이용하여 결측치 제거
na.omit(df_exam)

#교재 p202 실습 - 결측치를 0으로 대체하기
#교재 p202 실습 - 결측치를 평균으로 대체하기
