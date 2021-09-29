# 날짜 : 2021/09/28
# 이름 : 박시현
# 내용 : 데이터 시각화 - 박스상자 교재 p148 *****************중요, 연속데이터를 한눈에 파악하기 위해 사용



cars
View(cars)


dist <- cars[,2] #2번째컬럼
dist
class(dist)

boxplot(dist, main = '자동차 제동거리')
boxplot.stats(dist)

iris
boxplot(data=iris,
        Sepal.Length ~ Species)



#교재 p148 실습 - VADeaths 데이터셋을 상자그래프로 시각화하기
boxplot(VADeaths, range=0) #최소값과 최대값을 점선으로 연결
boxplot(VADeaths, range=0, notch = T) #중위수 비교시 사용 (허리선)
abline(h = 37, lty = 3, col = "red")

#교재 p149 실습 - VADeaths 데이터셋의 요약통계 보기
summary(VADeaths)
