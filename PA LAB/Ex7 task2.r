#install.packages('forecast', dependencies = TRUE)
library(forecast)

# Your rainfall data
rain <- c(987, 10, 25, 978, 774, 1563, 569, 1456, 789, 1479, 566, 1563, 1698)

# Create a time series object
rain_ts <- ts(rain, start = c(2020, 1), frequency = 12)

# Print and summarize the time series
#print(rain_ts)
print(summary(rain_ts))

# Plot the original time series
plot(rain_ts, main = "BEFORE PREDICTION")

# Fit an ARIMA model to the data
model <- auto.arima(rain_ts)

# Forecast the next 10 periods
forecast_data <- forecast(model, h = 10)

# Print the forecasted values
#print(forecast_data)

# Plot the forecasted values
plot(forecast_data, main = "Forecasting data for rain_ts")
