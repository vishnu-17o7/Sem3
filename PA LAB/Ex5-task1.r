x <- c(31, 13, 8, 17, 14, 11, 23, 43, 7, 13, 20, 8, 30, 11, 11, 18, 18, 20, 25, 44, 16, 12, 22, 13, 23)
y <- c(83, 50, 30, 60, 52, 42, 70, 100, 21, 42, 63, 26, 80, 47, 32, 62, 53, 60, 73, 103, 59, 43, 66, 47, 69)

data <- data.frame("Number of Components" = x, "Inspection Time" = y)

quad_model <- lm(y ~ poly(x, 2, raw = TRUE), data = data)
print(summary(quad_model))

cubic_model <- lm(y ~ poly(x, 3, raw = TRUE), data = data)
print(cubic_model)

new_data <- data.frame(x = 3)
predicted_time <- predict(quad_model, new_data)
cat("Prediction Quad:", predicted_time,"\n")


new_data <- data.frame(x = 38)
predicted_time <- predict(cubic_model, new_data)
cat("Prediction Cubic:", predicted_time)