# Data
data <- data.frame(
  ID = 1:5,
  Climate = c(521, 575, 468, 476, 659),
  Housing = c(6200, 8138, 7339, 7908, 8393),
  Health = c(237, 1656, 618, 1431, 1853),
  Crime = c(923, 886, 970, 610, 1483)
)

# Step 1: Compute mean values and covariance matrix
means <- colMeans(data[, -1])
cov_matrix <- cov(data[, -1])

# Step 2: Calculate eigenvalues and eigenvectors
eigen_results <- eigen(cov_matrix)

# Eigenvalues
eigenvalues <- eigen_results$values

# Eigenvectors
eigenvectors <- eigen_results$vectors

# Total proportion of variation
total_variation <- sum(eigenvalues)
proportion_variation <- eigenvalues / total_variation

# Determine how many principal components to consider
cumulative_proportion <- cumsum(proportion_variation)
num_components <- sum(cumulative_proportion <= 0.95)  # Choose a threshold (e.g., 95%)

# Step 3: Compute principal component scores
principal_component_scores <- as.matrix(data[, -1]) %*% eigenvectors[, 1:num_components]

# Step 4: Calculate the correlation matrix
cor_matrix <- cor(data[, -1])

# Step 5: Interpret each component
cor_with_components <- cor(data[, -1], principal_component_scores)

# Step 6: Standardize the variables in each principal component
standardized_scores <- scale(principal_component_scores)

# Print results
print("Mean Values:")
print(means)

print("Covariance Matrix:")
print(cov_matrix)

print("Eigenvalues:")
print(eigenvalues)

print("Eigenvectors:")
print(eigenvectors)

print("Total Proportion of Variation:")
print(proportion_variation)

print("Number of Principal Components to Consider:")
print(num_components)

print("Principal Component Scores:")
print(principal_component_scores)

print("Correlation Matrix:")
print(cor_matrix)

print("Correlation with Principal Components:")
print(cor_with_components)

print("Standardized Scores:")
print(standardized_scores)
