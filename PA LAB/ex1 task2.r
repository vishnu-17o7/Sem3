x <- c(77, 50, 71, 72, 81, 94, 96, 99, 67)
y <- c(82, 66, 78, 34, 47, 85, 99, 99, 68)
relation <- lm(y ~ x)
print("SUMMARY")
print(summary(relation))
print("PREDICTION")
a <- data.frame(x = 85)
result <- predict(relation, a)
print(result)
png(file = "task2.png")
plot(x, y, col = "maroon", main = "MIDSEM REPORT VS FINAL EXAMINATION", xlab = "MIDSEM", ylab = "FINALS", abline(lm(x ~ y)), cex = 1.3, pch = 16)
dev.off()
