df<-read.csv("C:/python/weather_project/기상대기정보.csv")

names(df) <- c("name","date","code","temp","rain","wind","wind_d","hum",
               "local_p","sea_p","sun","snow","cloud","pm10","pm2.5",
               "ozon","NO2","CO","SO2","pres","dew","dis","g_temp","month","y_temp")
head(df)
tail(df)

library(dplyr)
#y=df[1]
#x=df[c(2:54)]


library(reshape)
library(caret)
prep <- preProcess(df[5:25], c("range"))
df_scaled3 <- predict(prep, df[5:25])

data=cbind(df[4],df_scaled3)

#다중회귀분석 모델 생성
model<-lm(temp ~ .-wind_d-cloud-month-dew-pres, data = data )
model

#분석결과 요약
summary(model)

library(car)
vif(model)
#후진제거법
reduced<-step(model, direction="backward")
#최종적으로 선택된 변수들 확인

#최종 결과 확인
summary(reduced)

#전진선택법
plus<-step(model, direction="forward")
#최종적으로 선택된 변수들 확인

#최종 결과 확인
summary(plus)

#다중공선성
library(psych)
win.graph()
pairs.panels(data[names(data)])
