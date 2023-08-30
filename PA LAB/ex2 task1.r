chem <- c(100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200, 210, 220, 230)
food <- c(1000, 1050, 1080, 1150, 1200, 1220, 1300, 1360, 1420, 1500, 1600, 1650, 1650, 1650)

# Calculate correlation coefficient
correlation <- cor(chem, food)
print(paste("Correlation Coefficient:", correlation))

# Calculate covariance
covariance <- cov(chem, food)
print("Covariance:")
print(covariance)

# Calculate correlation matrix
data_matrix <- matrix(c(chem, food), ncol = 2)
correlation_matrix <- cor(data_matrix)
print("Correlation Matrix:")
print(correlation_matrix)

# Calculate covariance matrix
covariance_matrix <- cov(data_matrix)
print("Covariance Matrix:")
print(covariance_matrix)



plot(chem, food, main = "Chemical vs Food", xlab = "Chemical", ylab = "Food", pch = 19, col = "blue")
