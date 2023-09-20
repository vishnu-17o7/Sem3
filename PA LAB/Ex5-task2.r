x <- c(0, 1, 2, 3, 4, 5, 6)
y <- c(1, 4, 5, 3, 2, 3, 4)
data <- data.frame("Number of Components" = x, "Inspection Time" = y)

cubic_model <- lm(y ~ poly(x, 3, raw = TRUE), data = data)
print(cubic_model)

new_data <- data.frame(x = 2)
predicted_time <- predict(cubic_model, new_data)
cat("Prediction Cubic:", predicted_time)
