r <- matrix(c(1,0.75,0.63,0.75,1,0.69,0.63,0.69,1),nrow=3,ncol=3,byrow=TRUE)
print(r)
eigen_results <- eigen(r)
eigenvalues <- eigen_results$values
eigenvectors <- eigen_results$vectors
print("---EIGEN VALUES---")
print(eigenvalues)
print("---EIGEN VECTORS---")
print(eigenvectors)
sorted_indices <- order(eigenvalues, decreasing = TRUE)
eigenvalues <- eigenvalues[sorted_indices]
eigenvectors <- eigenvectors[, sorted_indices]
print("---SORTED EIGEN VALUES---")
print(eigenvalues)
print("---SORTED EIGEN VECTORS---")
print(eigenvectors)
num_factors <- 2
selected_eigenvalues <- eigenvalues[1:num_factors]
selected_eigenvectors <- eigenvectors[, 1:num_factors]
print("---SELECTED EIGEN VALUES---")
print(selected_eigenvalues)
print("---SELECTED EIGEN VECTORS---")
print(selected_eigenvectors)
# Step 6: Calculate the factor loadings
factor_loadings <- selected_eigenvectors * sqrt(selected_eigenvalues)
print("---FACTOR LOADINGS---")
print(factor_loadings)
# Step 7: Calculate the uniqueness matrix
n<-3
uniqueness <- diag(n) - factor_loadings %*% t(factor_loadings)
print("---UNIQUENESS---")
print(uniqueness)
# Step 8: Calculate the LL' matrix
LL_matrix <- factor_loadings %*% t(factor_loadings)
print("LL_MATRIX")
print(LL_matrix)