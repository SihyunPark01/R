# 날짜 : 2021/09/27
# 이름 : 박시현
# 내용 : 데이터 유형과 구조 - List 실습하기 교재 p78


x1 <- seq(1:5)
x2 <- matrix(1:6, nrow=2)
x3 <- data.frame(col1 = c(1,2), col2=c('김유신','김춘추'))

x1
x2
x3

values <- list(k1=x1, k2=x2, k3=x3) # 키값 지정가능
values

values$k1[3]
values$k2[1, 2]
values$k3$col2[1]
