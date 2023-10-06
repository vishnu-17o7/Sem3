x1 <- c(91, 97, 108, 121, 67, 124, 51, 73, 111, 57)
x2 <- c(71, 75, 69, 97, 70, 91, 39, 61, 80, 47)

print(cov(x1, x2))
print(cor(x1, x2))

mat <- matrix(c(x1, x2), ncol = 2)
print(cov(mat))
print(cor(mat))