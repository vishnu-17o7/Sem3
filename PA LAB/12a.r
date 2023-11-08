library(ggplot2)

s <- matrix(c(1, -2, 0, -2, 5, 0, 0, 0, 2), nrow = 3, ncol = 3)
print(eigen(s))
eigen_value <- eigen(s)$values
eigen_vector <- eigen(s)$vectors
sorted_index <- order(eigen_value, decreasing = TRUE)
sorted_eigenvector <- eigen_vector[, sorted_index]
e1 <- sorted_eigenvector[, 1]
e2 <- sorted_eigenvector[, 2]
e3 <- sorted_eigenvector[, 3]
y1 <- (t(e1) %*% s[, 1])
y2 <- (t(e2) %*% s[, 2])
y3 <- (t(e3) %*% s[, 3])
print("---PRINCIPAL COMPONENTS---")
print(y1)
print(y2)
print(y3)
print("---POPULATION PROPORTION---")
print(eigen_value[1] / sum(eigen_value))
quickplot(c(1:3), eigen_value, pch = 16, type = "o", main = "SCREE PLOT")