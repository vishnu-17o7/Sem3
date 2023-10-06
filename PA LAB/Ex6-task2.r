x1 <- c(15, 16, 18, 18, 23, 23, 20, 28, 29, 33, 33, 38)
x2 <- c(23, 22, 28, 27, 31, 38, 22, 28, 32, 37, 34, 44)
x3 <- c(25, 25, 35, 36, 36, 30, 30, 34, 38, 47, 41, 53)
y <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
#demand <- c(15, 16, 18, 18, 23, 23, 20, 28, 29, 33, 33, 38, 23, 22, 28, 27, 31, 28, 22, 28, 32, 37, 34, 44, 25, 25, 35, 36, 36, 30, 30, 34, 38, 47, 41, 53)
month <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36)

demand <- c(x1, x2, x3)
average <- (x1 + x2 + x3) / 3
total_avg <- mean(average)

seasonal_index <- average / total_avg
cat("\nSeasonal Index:", seasonal_index, "\n")

deseasonalized <- demand / seasonal_index
cat("\nDeseasonalized:", deseasonalized, "\n")

#data <- data.frame(month, demand)
model <- lm(demand ~ month)

f_input <- data.frame(month)
f <- predict(model, f_input)
ft <- f * seasonal_index

cat("\nForecasting Model : \n y - ft", (demand - ft), "\n\n\n(y - ft)/y", (demand - ft) / demand)

rmse <- sqrt(sum((demand - ft)^2) / length(demand))
mape <- (sum(((demand - ft) / demand)) / length(month)) * 100

cat("\n\nRMSE : ", rmse, "MAPE :", mape)
