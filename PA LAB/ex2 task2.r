year <- c(2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018)
price <- c(59, 59.6, 70, 82.5, 83.4, 83.4, 83.4, 100, 138.4, 115.6, 114.3, 99.7, 108.3, 165, 303.7, 285.1, 280.8)

# Calculate correlation coefficient
correlation <- cor(year, price)
print(paste("Correlation Coefficient:", correlation))

# Calculate covariance
covariance <- cov(year, price)
print("Covariance:")
print(covariance)

# Calculate correlation matrix
data_matrix <- matrix(c(year, price), ncol = 2)
correlation_matrix <- cor(data_matrix)
print("Correlation Matrix:")
print(correlation_matrix)

# Calculate covariance matrix
covariance_matrix <- cov(data_matrix)
print("Covariance Matrix:")
print(covariance_matrix)

plot(year, price, main = "Yr vs Price",xlab="year",ylab = "price", pch = 19, col = "blue")
