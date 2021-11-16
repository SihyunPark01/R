
# 날짜 : 2021/11/16
# 이름 : 박시현
# 내용 : R 로지스틱회귀 실습 (분류모델 만들어 테스트까지)


# 데이터 준비하기
View(iris)

df_iris <- iris
df_iris$Species <- as.integer(df_iris$Species)

View(df_iris)

# 학습데이터
idx <- sample(1:nrow(df_iris), nrow(df_iris)*0.8) # 1~150 사이의 숫자에서 랜덤으로 추출
idx

train_iris  <- df_iris[idx,]
test_iris   <- df_iris[-idx,]

View(train_iris)
View(test_iris)

# 모델생성 및 학습하기
model <- glm(Species ~ ., data = train_iris) #모델생성
fitted(model) #학습하기

# 테스트하기
result <- predict(model, test_iris)
result

result <- round(result, 0) #반올림처리
result

# 성능평가
acc <- mean(result == test_iris$Species)
acc

