# 날짜 : 2021/09/30
# 이름 : 박시현
# 내용 : 고급 시각화분석 - ggplot2패키지 시각화도구 - 레포트제출 or ppt 발표

install.packages('ggplot2')
library(ggplot2)


#막대차트

mtcars
mtcars_cyl <- table(mtcars$cyl)
mtcars_cyl

#R기본 막대차트
barplot(mtcars_cyl)

#ggplot2 막대차트
qplot(data = mtcars, x = cyl, geom = 'bar')
ggplot(data = mtcars, aes(x=cyl)) + geom_bar() # +차트종류

#라인차트
economics
View(economics)

#R기본 라인차트
plot(economics$date, economics$unemploy, type = 'l')

#ggplot2 라인차트
qplot(data = economics, x = date, y = unemploy, geom = 'line')
ggplot(data = economics, aes(x=date, y=unemploy)) + geom_line()

#박스상자
mpg
View(mpg)

boxplot(mpg$hwy ~ mpg$drv)

qplot(data = mpg, x=drv, y=hwy, geom = 'boxplot')
ggplot(data = mpg, aes(x=drv, y=hwy)) + geom_boxplot()

#히스토그램 (연속데이터 - 길이, 크기, 무게 등)
iris
View(iris)

#R기본 히스토그램
hist(iris$Sepal.Width)
hist(iris$Sepal.Length)
hist(iris$Petal.Width)
hist(iris$Petal.Length)

qplot(data = iris, x = iris$Sepal.Width, geom = 'histogram')
ggplot(data = iris, aes(x=Sepal.Width)) + geom_histogram()


#산점도

plot(iris[,3:4], pch=16, col=iris$Species) #모든 행에 대한 3~4번째 열열

qplot(data = iris, 
      x=Petal.Length, 
      y=Petal.Width, 
      col = Species,
      geom = 'point')
ggplot(data = iris, 
       aes(x=Petal.Length, y=Petal.Width, color=Species)) + geom_point()


