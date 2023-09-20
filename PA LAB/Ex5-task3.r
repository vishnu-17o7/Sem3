x <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
y <- c(7.5, 7.3, 6.2, 3.2, 5.6, 8.2, 7.5, 10.5, 2.6, 5.4)

data <- data.frame("Number of Components" = x, "Inspection Time" = y)

quad_model <- lm(y ~ poly(x, 2, raw = TRUE), data = data)
print(summary(quad_model))

new_data <- data.frame(x = 2)
predicted_time <- predict(quad_model, new_data)
cat("Prediction Quad:", predicted_time, "\n")

