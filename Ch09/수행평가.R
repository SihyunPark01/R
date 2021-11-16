
# 수행평가 3번 문항

install.packages('dplyr')
library(dplyr)

# 1) exam.csv 파일을 dataframe으로 출력
exam <- read.csv('../file/exam.csv', header = T)
exam

# 2) math, english, science 변수만 갖는 DataFrame 출력
df_result <- exam %>% select(math, english, science)
df_result

# 3) class가 1인 모든 변수를 갖는 DataFrame 출력
df_class1 <- exam %>% select(everything()) %>% filter(class == 1)
df_class1

# 4) english가 60점 이상 80점 미만 DataFrame 출력
df_english <- exam %>% filter(english >= 60 & english < 80)
df_english

# 5) science가 60점 이상 80점 미만 DataFrame 출력
df_science <- exam %>% filter(science >= 60 & science < 80)
df_science

# 6) math가 60점 이상이고 점수가 높은 순서를 갖는 class, id, math 변수를 갖는 DataFrame 출력
df_result2 <- exam %>% filter(math >= 60) %>% select(class, id, math) %>% arrange(desc(math))
df_result2









# 7) class로 그룹화되고 수학점수 평균, 영어점수 평균, 과학점수 평균 변수를 갖는 DataFrame 출력
exam %>% group_by(class) %>% mutate(mean_math = mean(math), mean_english = mean(english), mean_science = mean(science))









# 8) total(math, english, science의 합) 파생변수를 갖는 DataFrame 출력
exam %>% mutate(total = math + english + science)


# 9) mean(matn, english, scienced의 합의 평균) 파생변수를 갖는 DataFrame 출력
df_mean <- exam %>% mutate(mean = (math + english + science) / 3)
df_mean


# 10) grade(평균의 등급 A,B,C,D,E) 파생변수를 갖는 DataFrame 출력
df_mean %>% mutate(grade = ifelse(mean >= 90, 'A', 
                           ifelse(mean >= 80, 'B',
                           ifelse(mean >= 70, 'C',
                           ifelse(mean >= 60, 'D', 'F')))))
                                   















