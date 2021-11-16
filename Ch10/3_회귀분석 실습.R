
# 날짜 : 2021/11/16
# 이름 : 박시현
# 내용 : R 회귀분석 실습


#작업 디렉토리 설정
#setwd("C:/Users/bigdata/Desktop/Workspace/R/file") 

df_product <- read.csv('../file/product.csv')
View(df_product)

df_xy <- data.frame(df_product$제품_적절성, df_product$제품_만족도) #상관도가 높은 두 변수
View(df_xy)

x <- df_xy$df_product.제품_적절성
y <- df_xy$df_product.제품_만족도


# 선형회귀 모델
model <- lm(formula = y ~ x, data = df_xy)
model #결과값이 순서대로 절편과 기울기 임

# 회귀식
result <- function(x){
  y <- 0.7393 * x + 0.7789
  return (y)
}

# 테스트
predict(model,1)
predict(model,2)
predict(model,3)

result(1)
result(2)
result(3)
result(4)
result(5)

# galton 선형회귀 분석
install.packages('UsingR')
library(UsingR)

View(galton)

galton_model <- lm(child ~ parent, data = galton)
galton_model

# 시각화
plot(galton$child ~ galton$parent, data = galton)
abline(galton_model, col='red') #부모키가 커짐에따라 자녀의 키도 커짐을 알 수 있음음
