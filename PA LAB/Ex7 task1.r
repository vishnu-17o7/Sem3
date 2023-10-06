#install.packages("lubridate")
library(lubridate)
library(forecast)
x <- c(580, 7813, 28266, 59287, 75700, 87820, 95314, 126214, 218843, 471497, 936851, 1508725, 2072113)
mts <- ts(x, start = decimal_date(ymd("2020-01-22")), frequency = 365.25 / 7)
fit <- auto.arima(mts)
forecast(fit, 5)
plot(forecast(fit, 5), xlab = "Weekly data", ylab = "Total positive cases", main = "COVID-19 Pandemic", col.main = "green")
