month <- c(37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48)
sales <- c(3216483, 3453239, 5431651, 4241851, 3909887, 3216438, 4222005, 3621034, 5162201, 4627177, 4623945, 4599368)
promotion_expenses <- c(121, 128, 170, 160, 151, 120, 152, 125, 170, 160, 168, 166)
competition_promotion <- c(1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0)

input <- data.frame(sales, promotion_expenses, competition_promotion)
# print(length(month),length(sales),length(promotion_expenses),length(promotion))
model <- lm(sales ~ promotion_expenses + competition_promotion, data = input)
# print(model)

predict_input <- data.frame(promotion_expenses, competition_promotion)
f <- predict(model, predict_input)

cat("Forecasting Model : \n y - f", (sales - f), "\n\n\n(y - f)/y", (sales - f) / sales)

rmse <- sqrt(sum((sales - f)^2) / length(sales))
mape <- (sum((sales - f) / sales) / length(sales)) * 100
cat("\n\nRMSE : ", rmse, "MAPE :", mape)
plot(sales, f, col = c("blue", "red"))
