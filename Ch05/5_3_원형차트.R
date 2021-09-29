# 날짜 : 2021/09/28
# 이름 : 박시현
# 내용 : 데이터 시각화 - 원형차트(파이차트) 교재 p147


season <- c('winter','summer','spring','summer','summer',
            'autumn','autumn','summer','spring','spring')
season
result <- table(season)
result

pie(result, main = 'Season')
pie(result, main = 'Season', col=terrain.colors(4))


#교재 p148 실습 - 분기별 매출현황을 파이 차트로 시각화하기
par(mfrow = c(1,1))
pie(chart_data, labels = names(chart_data), col = rainbow(8), cex = 1.2)
title("2018~2019년도 분기별 매출현황")
