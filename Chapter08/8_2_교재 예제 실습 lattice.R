# 날짜 : 2021/09/30
# 이름 : 박시현
# 내용 : 고급 시각화분석 - 교재 예제 실습

#교재 p234 실습 - lattice 패키지 사용 준비하기

install.packages("lattice")
library(lattice)

install.packages("mlmRev")
library(mlmRev)

data("Chem97")
str(Chem97)
head(Chem97, 30)

#교재 p234 실습 - lattice 패키지 사용 준비하기
histogram(~gcsescore, data=Chem97)

#교재 p236 실습 - histogram()함수를 이용하여 데이터 시각화하기
histogram(~gcsescore|score, data = Chem97)

#교재 p236 실습 - score 변수를 조건변수로 지정하여 데이터 시각화하기
histogram(~gcsescore|factor(score), data = Chem97)

#교재 p238 실습 - densityplot() 함수를 사용하여 밀도 그래프 그리기
densityplot(~gcsescore|factor(score), data = Chem97,
            groups = gender,
            plot.points = T, auto.key = T)

#교재 p239 실습 - barchart() 함수를 사용하여 막대 그래프 그리기 
data(VADeaths)
VADeaths

str(VADeaths)
class(VADeaths) #통계처리를 위해 matrix형식을 table형식으로 변경해야 함
mode(VADeaths) 

dft <- as.data.frame.table(VADeaths)
str(dft)
dft
barchart(Var1 ~ Freq | Var2, data = dft, layout = c(4,1))
barchart(Var1 ~ Freq | Var2, data = dft, layout = c(4,1), origin=0) #origin=0 : x축의 구간을 0부터 표시

#교재 p241 실습 - dotplot() 함수를 사용하여 점 그래프 그리기
dotplot(Var1 ~ Freq | Var2, dft)
dotplot(Var1 ~ Freq | Var2, dft, layout = c(4, 1))


#교재 p242 실습 - 점을 선으로 연결하여 시각화하기
dotplot(Var1 ~ Freq, data = dft,
        groups =  Var2, type = "o",
        auto.key = list(space = "right", points = T, lines = T))

#교재 p243 실습 - airquality 데이터셋으로 산점도 그래프 그리기
library(datasets)
str(airquality)
xyplot(Ozone ~ Wind, data = airquality)
xyplot(Ozone ~ Wind | Month, data = airquality)
xyplot(Ozone ~ Wind | Month, data = airquality, layout = c(5,1)) #1행 5열로 산점도 그래프 그리기

convert <- transform(airquality, Month = factor(Month))
str(convert)
xyplot(Ozone ~ Wind, data = convert)


#교재 p246 실습 - quakes 데이터셋으로 산점도 그래프 그리기
head(quakes)
str(quakes)
xyplot(lat ~ long, data = quakes, pch = ".")
tplot <- xyplot(lat ~ long, data = quakes, pch = ".")
tplot <- update(tplot, main = "1964년 이후 태평양에서 발생한 지진 위치")
print(tplot)

#교재 p247 실습 - 이산형 변수를 조건으로 지정하여 산점도 그리기
range(quakes$depth)

quakes$depth2[quakes$depth >= 40 & quakes$depth <= 150] <- 1
quakes$depth2[quakes$depth >= 151 & quakes$depth <= 250] <- 2
quakes$depth2[quakes$depth >= 251 & quakes$depth <= 350] <- 3
quakes$depth2[quakes$depth >= 351 & quakes$depth <= 450] <- 4
quakes$depth2[quakes$depth >= 451 & quakes$depth <= 550] <- 5
quakes$depth2[quakes$depth >= 551 & quakes$depth <= 680] <- 6

convert <- transform(quakes, depth2=factor(depth2))
xyplot(lat ~ long | depth2, data = convert)


#교재 p248 실습 - 동일한 패널에 두개의 변수값 표현하기
xyplot(Ozone + Solar.R ~ Wind | factor(Month),
       data = airquality,
       col = c("blue", "red"),
       layout = c(5, 1))

#교재 p249 실습 - equal.count() 함수를 사용하여 이산형 변수 범주화하기
numgroup <- equal.count(1:150, number = 4, overlap = 0)
numgroup

depthgroup <- equal.count(quakes$depth, number = 5, overlap = 0)
depthgroup

xyplot(lat ~ long | depthgroup, data = quakes,
       main = "Fiji Earthquakes(depthgroup)",
       ylab = "latitude", xlab = "longitude",
       pch = "@", col = "red")


#교재 p251 실습 - 수심과 리히터 규모 변수를 동시에 적용하여 산점도 그리기
magnitudegroup <- equal.count(quakes$mag, number = 2, overlap = 0) # 리히터 규모를 2개 영역으로 구분
magnitudegroup

xyplot(lat ~ long | depthgroup, data = quakes,
       main = "Fiji Earthquakes(magnitude)",
       ylab = "latitude", xlab = "longitude",
       pch = "@", col = "blue")

xyplot(lat ~ long | depthgroup * magnitudegroup, data = quakes,
       main = "Fiji Earthquakes",
       ylab = "latitude", xlab = "longitude",
       pch = "@", col = c("red", "blue"))

#교재 p253 실습 - 이산형 변수를 리코딩한 뒤에 factor형으로 변환하여 산점도 그리기

quakes$depth3[quakes$depth >= 39.5 & quakes$depth <= 80.5] <- 'd1'
quakes$depth3[quakes$depth >= 79.5 & quakes$depth <= 186.5] <- 'd2'
quakes$depth3[quakes$depth >= 185.5 & quakes$depth <= 397.5] <- 'd3'
quakes$depth3[quakes$depth >= 396.5 & quakes$depth <= 562.5] <- 'd4'
quakes$depth3[quakes$depth >= 562.5 & quakes$depth <= 680.5] <- 'd5'

quakes$mag3[quakes$mag >= 3.95 & quakes$mag <= 4.65] <- 'm1'
quakes$mag3[quakes$mag >= 4.55 & quakes$mag <= 6.45] <- 'm2'

convert <- transform(quakes, depth3 = factor(depth3),
                     mag3 = factor(mag3))

xyplot(lat ~ long | depth3*mag3, data = convert,
       main = "Fiji Earthquakes",
       ylab = "latitude", xlab = "longitude",
       pch = "@", col = c("red", "blue"))

#교재 p254 실습 - depth 조건에 의해서 위도와 경도의 조건 그래프 그리기
coplot(lat ~ long | depth, data = quakes)

#교재 p255 실습 - 조건의 구간 크기와 겹침 간격 적용 후 조건 그래프 그리기
coplot(lat ~ long | depth, data = quakes,
       overlap = 0.1)
coplot(lat ~ long | depth, data = quakes,
       number = 5, row = 1)


#교재 p256 실습 - 패널과 조건 막대에 색을 적용하여 조건 그래프 그리기

coplot(lat ~ long | depth, data = quakes,
       number = 5, row = 1,
       panel = panel.smooth)
coplot(lat ~ long| depth, data = quakes,
       number = 5, row = 1,
       col = 'blue',
       bar.bg = c(num = 'green'))


#교재 p257 실습 - 위도, 경도, 깊이를 이용하여 3차원 산점도 그리기 : cloud()함수
cloud(depth ~ lat * long, data = quakes,
      zlim = rev(range(quakes$depth)),
      xlab = "경도", ylab = "위도", zlab = "깊이")


#교재 p258 실습 - 테두리와 회전 속성을 추가하여 3차원 산점도 그래프 그리기
cloud(depth ~ lat * long, data = quakes,
      zlim = rev(range(quakes$depth)),
      panel.aspect = 0.9,
      screen = list(z = 45, x = -25),
      xlab = "경도", ylab = "위도", zlab = "깊이")






