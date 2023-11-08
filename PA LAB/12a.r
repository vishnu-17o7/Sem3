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
eigen_value <- data.frame(
  PC = c(1, 2, 3),
  Eigenvalue = eigen_value
)
ggplot(eigen_value, aes(x = PC, y = Eigenvalue)) +
  geom_point(shape = 16) +
  geom_line() +
  labs(
    x = "Principal Component",
    y = "Eigenvalue",
    title = "Scree Plot"
  )