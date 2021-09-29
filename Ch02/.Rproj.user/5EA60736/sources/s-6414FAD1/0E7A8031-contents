# 날짜 : 2021/09/28
# 이름 : 박시현
# 내용 : 데이터 시각화 - 히스토그램 교재 p1


cars

dist <- cars[,2]
dist

barplot(dist)
hist(dist)

#iris 히스토그램
iris
hist(iris$Sepal.Width,
     xlim = c(2.0, 4.5),
     xlab = '꽃받침 너비',
     main = '꽃받침 너비 분포도')



#교재 p150 실습 - iris 데이터셋 가져오기
data(iris)
names(iris)
str(iris)
head(iris) #앞부분 6개 보기

#교재 p150 실습 - iris 데이터셋의 꽃받침 길이(Sepal.Length)로 히스토그램 시각화하기
summary(iris$Sepal.Length)
hist(iris$Sepal.Length, xlab="iris$Sepal.Length", col = "magenta",
    main = "iris 꽃받침 길이 Histogram", xlim = c(4.3, 7.9))


#교재 p151 실습 - iris 데이터셋의 꽃받침 너비(Sepal.Width)로 히스토그램 시각화하기
summary(iris$Sepal.Width)
hist(iris$Sepal.Width, xlab="iris$Sepal.Width", col = "mistyrose",
     main = "iris 꽃받침 너비 Histogram", xlim = c(2.0, 4.5))


#교재 p152 실습 - 히스토그램에서 빈도와 밀도 표현하기



#교재 p152 실습 - 정규분포 추정 곡선 나타내기
