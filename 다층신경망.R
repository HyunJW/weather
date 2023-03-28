df<-read.csv("C:/python/weather_project/기상대기정보.csv")

names(df) <- c("name","date","code","temp","rain","wind","wind_d","hum",
               "local_p","sea_p","sun","snow","cloud","pm10","pm2.5",
               "ozon","NO2","CO","SO2","pres","dew","dis","g_temp","month","y_temp")

## 신경망 라이브러리
#install.packages("nnet")
library(nnet)

## 신경망 모형 생성
nn.df <- nnet(temp~., data=df, size=2, rang=0.1, decay=5e-4, maxit=200)