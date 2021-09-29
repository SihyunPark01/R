# 날짜 : 2021/09/28
# 이름 : 박시현
# 내용 : 제어문과 함수 - 조건문 교재 p111

##################
#교재예제 실습하기
##################

#교재 p110 실습 - if() 사용하기
x <- 50; y <- 4; z <- x*y
if(x*y >= 40){
  cat("x*y의 결과는 40이상입니다.\n")
  cat("x*y=", z)
} else {
  cat("x*y의 결과는 40미만입니다. x*y=", z, "\n")
}


#교재 p110 실습 - if() 사용으로 입력된 점수의 학점 구하기
score <- scan()
score
result <- "노력"
if(score >= 80){
  result <- "우수"
}
cat("당신의 학점은", result, score)


#교재 p111 실습 - if ~ else if 형식으로 학점 구하기
score <- scan()
if(score >= 90){
  result = "A학점"
} else if(score >= 80){
  result = "B학점"
} else if(score >= 70){
  result = "C학점"
} else if(score >= 60){
  result = "D학점"
} else {
  result = "F학점"
}
cat("당신의 학점은", result)
print(result)


#교재 p112 실습 - ifelse() 사용하기 --- 3항연산자와 비슷
score <- scan()
ifelse(score >= 80, "우수", "노력") #조건식이 참이면 두번째 인수값을 선택
ifelse(score <= 80, "우수", "노력") #조건식이 거짓이면 세번째 인수값을 선택


#교재 p112 실습 - ifelse() 응용하기
excel <- read.csv("")
q1 <- excel$q1  #q1 변수값 추출
q1              #q1 변수값 확인
ifelse(q1 >= 3, sqrt(q1), q1)   #q1값이 3보다 큰 경우 sqrt() 함수 적용


#교재 p113 실습 - ifelse() 에서 논리연산자 사용하기
ifelse(q1 >= 2 & q1 <= 4, q1 ^ 2, q1) #1과 5만 출력, 나머지 2~4는 제곱승 적용


#교재 p113 실습 - switch() 를 사용하여 사원명으로 급여정보 보기 -- switch(비교문, 실행문1, 실행문2....)
# 비교문의 변수의 이름이 실행문의 변수의 이름과 일치할 때 일치하는 변수에 할당된 값을 출력함

empname <- scan(what = "")
empname
switch(empname,
       hong = 250,
       lee = 350,
       kim = 200,
       kang = 400
       )


#교재 p114 실습 - 벡터객체에서 특정 데이터를 검색하는데 사용되는 which() 함수:index 값을 반환 
name <- c("kim","lee","choi","park")
which(name == "choi")


#교재 p114 실습 - 데이터프레임에서 which() 사용
no <- c(1:5)
name <- c("홍길동","이순신","강감찬","유관순","김유신")
score <- c(85, 78, 89, 90, 74)
exam <- data.frame(학번 = no, 이름 = name, 성적 = score)
exam

which(exam$이름 == "유관순")
exam[4,]

