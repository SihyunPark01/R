# 날짜 : 2021/09/28
# 이름 : 박시현
# 내용 : 제어문과 함수 - 연산자 교재 p108


##################
#교재예제 실습하기
##################

#교재 p108 실습 - 산술연산자 사용
num1 <- 100
num2 <- 20
result <- num1 + num2
result

result <- num1 - num2
result

result <- num1 * num2
result

result <- num1 / num2
result

result <- num1 %% num2 #나머지계산
result

result <- num1 ^ 2 #제곱 계산
result

result <- num1 ^ num2 #100의 20승
result


#교재 p109 실습 - 관계연산자 사용
boolean <- num1 == num2
boolean

boolean <- num1 != num2
boolean

boolean <- num1 > num2
boolean

boolean <- num1 >= num2
boolean

boolean <- num1 < num2
boolean

boolean <- num1 <= num2
boolean


#교재 p109 실습 - 논리연산자 사용
logical <- num1 >= 50 & num2 <= 10 # 두 관계식이 같은지 판단
logical

logical <- num1 >= 50 | num2 <= 10 # 두 관계식 중 하나라도 같은지 판단
logical

logical <- num1 >= 50 # 관계식 판단
logical

logical <- !(num1 >= 50)
logical

x <- TRUE; y <- FALSE
xor(x,y) # xor()은 배타적 논리합, 두 논리값이 상반되는 경우 TRUE, 같으면 FALSE를 반환

