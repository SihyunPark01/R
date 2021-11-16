#날짜 : 2021/09/30
#이름 : 박시현
#내용 : 고급 시각화 분석 - qplot 교재 예제 실습 



#교재 p259 실습 - ggplot2 패키지 설치와 실습 데이터 가져오기
install.packages("ggplot2")
library(ggplot2)
data(mpg)
str(mpg)
head(mpg)
summary(mpg)
table(mpg$drv)

#교재 p261 실습 - qplot() 함수의 fill과 binwidth속성 적용하기
qplot(hwy, data = mpg)
qplot(hwy, data = mpg, fill = drv)
qplot(hwy, data = mpg, fill = drv,
      binwidth = 2)


#교재 p262 실습 - facets 속성을 사용하여 drv 변수값으로 행/열 단위로 패널 생성하기
qplot(hwy, data = mpg, fill = drv,
      facets = .~drv,
      binwidth = 2)
qplot(hwy, data = mpg, fill = drv,
      facets = drv~.,
      binwidth = 2)

#교재 p263 실습 - qplot() 함수에서 color 속성을 사용하여 두 변수 구분하기
qplot(displ, hwy, data = mpg)
qplot(displ, hwy, data = mpg, color = drv)

#교재 p264 실습 - displ과 hwy변수의 관계를 drv변수로 구분하기
qplot(displ, hwy, data = mpg, color = drv, facets = .~drv)


#교재 p264 실습 - mtcars 데이터 셋에 색상, 크기, 모양 적용하기
head(mtcars)
qplot(wt, mpg, data = mtcars, color = factor(carb))
qplot(wt, mpg, data = mtcars, size = qsec, color = factor(carb))
qplot(wt, mpg, data = mtcars, size = qsec, color = factor(carb), shape = factor(cyl))

#교재 p266 실습 - diamonds 데이터 셋에 막대, 점, 선 레이아웃 적용하기
head(diamonds)
qplot(clarity, data = diamonds, fill = cut, geom = "bar") #채우기
qplot(clarity, data = diamonds, colour = cut, geom = "bar") #테두리
qplot(wt, mpg, data = mtcars, size = qsec, geom = "point") #point속성으로 그래프 그리기
qplot(wt, mpg, data = mtcars, size = qsec, geom = "point")
qplot(wt, mpg, data = mtcars, size = factor(cyl))
qplot(wt, mpg, data = mtcars, size = qsec, 
      color = factor(carb), 
      shape = factor(cyl),geom = "point")
qplot(wt, mpg, data = mtcars,
      geom = c("point","smooth"))
qplot(wt, mpg, data = mtcars, color = factor(cyl),
      geom = c("point","smooth"))
qplot(wt, mpg, data = mtcars,
      color=factor(cyl), geom = "line")
qplot(wt, mpg, data = mtcars,
      color=factor(cyl), geom = c("point", "line"))
