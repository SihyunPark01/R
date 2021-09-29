# 날짜 : 2021/09/27
# 이름 : 박시현
# 내용 : R설치와 개요 - 자료형 실습하기 교재 p41

# 숫자형(정수, 실수)
num1 <- 1
num2 <- 2
num3 <- 3.14
num1
num2;num3

# 논리형
bool1 <- TRUE
bool2 <- FALSE
bool1
bool2

# 문자형(문자, 문자열)
str1 <- "Hello"
str2 <- '안녕'
str1
str2

# 특수형
var1 <- NULL # 초기값
var2 <- NA   # 결측값, Not Available (값이 빠져있는 경우)
var3 <- NaN  # 수학적으로 정의가 불가능한 값, Not a Number
var1;var2;var3
var1
var2
var3


#############################################

#교재 p42 실습 - 스칼라 변수 사용 예
int <- 20
int

string <- "홍길동"
string

boolean <- TRUE
boolean

sum(10, 20, 20)
sum(10, 20, 20, NA)               #인수 중 NA가 있는 경우 합계결과 대신 NA가 출력됨
sum(10, 20, 20, NA, na.rm = TRUE) #na.rm=TRUE속성을 이용하여 결측치 제거 후 합계 여산산

ls()          # 현재 메모리에 할당된, 사용중인 변수(객체)보기



#교재 p43 실습 - 자료형 확인
is.character(string)      #string변수의 문자형 여부 확인
x <- is.numeric(int)      #int변수의 숫자형 여부의 결과를 x에 저장
is.logical(boolean)
is.logical(x)
is.na(x)                  #x변수의 NA 여부 확인


#교재 p43 실습 - 문자 원소를 숫자 원소로 형 변환하기기
x <- c(1,2,"3") #3개의 원소를 갖는 벡터 생성
x
result <- x*3

result <- as.numeric(x) * 3   #벡터 x를 숫자형으로 변환
result <- as.integer(x) * 3   #이것도 같은 결과
result


#교재 p44 실습 - 스칼라 변수의 자료형(숫자형,문자형,논리형)과 자료구조(배열,리스트,테이블 등) 확인 - 스칼라 변수니까 결과는 같은 유형으로 나타남.
mode(int)       #mode(변수) : 자료의 유형을 알려줌
mode(string)
mode(boolean)

class(int)      #class(변수) : 자료구조의 유형을 알려줌
class(string)
class(boolean)


#교재 p45 실습 - 문자벡터와 그래프 생성 : c()함수를 이용하여 5개의 문자열을 갖는 벡터 데이터 생성, gender변수에 저장, plot()함수를 이용하여 그래프 그리기
gender <- c("man","woman","woman","man","man")
plot(gender)      #차트는 수치데이터만 가능하므로 에러 발생


#교재 p45 실습 - as.factor() 함수를 이용하여 요인형 변환
Ngender <- as.factor(gender)    #Factor형으로 변환
table(Ngender)                  #빈도수 구하기
Ngender


#교재 p46 실습 - Factor형 변수로 차트 그리기
plot(Ngender)       #막대 차트 확인인
mode(Ngender)
class(Ngender)
is.factor(Ngender)
