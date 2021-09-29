# 날짜 : 2021/09/27
# 이름 : 박시현
# 내용 : 데이터 유형과 구조 - 문자형 처리 실습하기 교재 p84

#R 패키지 설치
install.packages('stringr')

#R 패키지 로드
library(stringr)

# 문자열
str <- 'Hello World'
str

# 문자열 길이
str_length(str)

# 문자열 자르기
str_sub(str, 1, 5)

# 