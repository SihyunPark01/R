# 날짜 : 2021/09/28
# 이름 : 박시현
# 내용 : 데이터 시각화 - 산점도 교재 p154


mtcars
View(mtcars)

wt <- mtcars$wt
mpg <- mtcars$mpg

plot(wt, mpg) #무게에 따른 연비를 산점도로 나타내기
plot(wt, mpg, col = 'red', pch = 8) 

iris

df_iris <- iris[,3:4]
df_iris

group <- as.numeric(iris$Species)
group

color <- c('red', 'green', 'blue')

plot(df_iris, pch=16, col=color[group])





#교재 p154 실습 - 산점도 그래프에 대각선과 텍스트 추가하기




#교재 p155 실습 - type 속성으로 산점도 그리기

#교재 p156 실습 - pch 속성으로 산점도 그리기

#교재 p160 실습 - galton 데이터셋을 대상으로 중복된 자료 시각화하기

#교재 p162 실습 - iris 데이터셋의 4개 변수를 상호 비교

#교재 p163 실습 - 3차원으로 산점도 시각화하기