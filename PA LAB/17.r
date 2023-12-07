# Manually enter your data
my_data <- matrix(c(
  3, 5, 2, 8,
  1, 4, 6, 7,
  9, 2, 3, 6,
  5, 8, 1, 4
), nrow = 4, ncol = 4, byrow = TRUE)

# Specify column names
col_names <- c('Var1', 'Var2', 'Var3', 'Var4')

# Create a data frame
my_df <- as.data.frame(my_data)
colnames(my_df) <- col_names

# Factor analysis on the covariance matrix
s <- cov(my_df)
print(s)

s.eigen <- eigen(s)
print(s.eigen)
plot(s.eigen$values, xlab = 'Eigen value number', ylab = 'Eigen value size', main = 'Scree plot', type = 'b', xaxt = 'n')
axis(1, at = seq_along(s.eigen$values))

c <- as.matrix(s.eigen$vectors[, 1:2])
d <- diag(s.eigen$values[1:2])
s.loadings <- c %*% sqrt(d)
print(s.loadings)

prop.loadings <- colMeans(s.loadings^2)
prop.var <- prop.loadings / sum(s.eigen$values)
print(prop.var)

prop.exp <- prop.var / sum(prop.var)
print(prop.exp)

library(psych)
my_data.Fa.Covar <- principal(my_df, nfactors = 2, rotate = 'none', covar = TRUE)
print(my_data.Fa.Covar)

my_data.pca <- prcomp(my_df)$rotation[, 1:2]
print(my_data.pca)

print(s.eigen$vectors[, 1:2])

s.h2 <- rowSums(s.loadings^2)
print(s.h2)

print(colSums(s.loadings^2))

print(s.eigen$values[1:2])

s.v2 <- diag(s)
print(s.v2)