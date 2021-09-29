# 날짜 : 2021/09/28
# 이름 : 박시현
# 내용 : 데이터 입출력 - 데이터 불러오기 교재 p95

# 데이터 입력
num <- scan()
print(num)

# 컬럼명이 없는 파일 불러오기
student <- read.table('../file/student.txt')
student

# 컬럼명이 있는 파일 불러오기
student1 <- read.table('../file/student1.txt', header=T) #header(컬럼명)가 존재한다다
student1

# 구분자(tab, space, ;, ,)가 있는 파일 불러오기
student2 <- read.table('../file/student2.txt', sep=';', header=T)
student2

# 결측치가 있는 파일 불러오기
student3 <- read.table('../file/student3.txt', header=T, na.strings = '-')
student3

# CSV 파일 불러오기 -- 보통은 이걸로 불러와서 분석
student4 <- read.csv('../file/student4.txt', header=T, na.strings = '-')
student4
class(student4) # data유형은 dataframe (테이블 형태)

# Excel 파일 불러오기
install.packages("readxl")  #먼저 설치해야함
library(readxl) #import시키고

student_excel <- read_excel('../file/studentexcel.xlsx')
student_excel
View(student_excel)  #표로 불러오기


