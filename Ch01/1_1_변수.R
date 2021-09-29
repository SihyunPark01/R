# 날짜 : 2021/09/27
# 이름 : 박시현현
# 내용 : R설치와 개요 - 변수 실습하기 교재 p39

# r스튜디오 기본설정
# Tools -> Global options -> code -> saving -> default encoding 'UTF-8'로
# spelling-> use real time spellchecking 체크 해제

# 변수
num1 <- 1
num2 <- 2
print(num1)
print(num2)

str1 <- "Hello R!"
str2 <- '안녕 R!'
str1
str2

#스칼라변수(한개의 값을 갖는 변수, 일반적인 변수)
var1 <- 1
var2 <- 2
var3 <- var1 + var2
var3

#벡터(Vector)변수(하나 이상의 값을 갖는 변수, 배열)
x <- c(1, 2, 3)
y <- c('서울','대전','대구','부산','광주')
x
y

#팩터(factor)변수(문자열이 저장되는 벡터, 범주형 데이터)
type <- c('A','B','B','O','AB','A')
ftype <-factor(type)
ftype


########################################################
#교재 p40 실습 - 변수 사용 예 - 변수는 재사용이 가능하고, 최근에 할당된 값으로 수정됨.
var1 <- 0
var1

var1 <- 1
var1

var2 <- 2
var2

var3 <- 3
var3


#교재 p40 실습 - 변수, 멤버 형식의 변수 선언 예 - 상품에 관련된 정보를 하나의 변수로 묶어서 표현할 경우, "변수.멤버" 형태로 변수명을 지정하는게 좋음
goods.code <- 'a001'
goods.name <- '냉장고'
goods.price <- 850000
goods.des <- '최고사양, 동급 최고 품질'


#교재 p41 스칼라 변수 사용 예 - 한 개의 값만 갖는 변수
age <-35
name <-"홍길동"
age
name

#교재 p41 벡터 변수 사용 예 - 두 개 잇앙의 값을 갖는 변수
age <- 35
names <- c("홍길동","이순신","유관순")
age
names



