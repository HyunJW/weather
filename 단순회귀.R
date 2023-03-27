df<-read.csv("C:/python/weather_project/기상대기정보_변수추가.csv")

names(df) <- c("name","date","code","temp","rain","wind","wind_d","hum",
               "local_p","sea_p","sun","snow","cloud","pm10","pm2.5",
               "ozon","NO2","CO","SO2","pres","dew","dis","g_temp","month",
               "y_temp","rain_yn","snow_yn")


summary(lm(temp ~ rain, data = df)) #기온과 강수량
summary(lm(temp ~ wind, data = df)) #기온과 풍속
summary(lm(temp ~ sun, data = df)) #기온과 일조율
summary(lm(temp ~ snow, data = df)) #기온과 적설량
summary(lm(temp ~ pm10, data = df)) #기온과 미세먼지농도
summary(lm(temp ~ pm2.5, data = df)) #기온과 초미세먼지농도
summary(lm(temp ~ ozon, data = df)) #기온과 오존
summary(lm(temp ~ NO2, data = df)) #기온과 이산화질소
summary(lm(temp ~ CO, data = df)) #기온과 일산화탄소
summary(lm(temp ~ SO2, data = df)) #기온과 이황산가스
summary(lm(temp ~ g_temp, data = df)) #기온과 지면온도
summary(lm(temp ~ rain_yn, data = df)) #기온과 우천여부
summary(lm(temp ~ snow_yn, data = df)) #기온과 강설여부
