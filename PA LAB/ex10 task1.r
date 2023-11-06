# Load the data from the CSV file
data <- read.csv("protein.csv")

# Exclude the "Country" column and store it separately
countries <- data$Country
data <- data[, -1]

# Standardize the data
standardized_data <- scale(data)

# Calculate the covariance matrix
cov_matrix <- cov(standardized_data)

# Calculate the eigenvalues and eigenvectors of the covariance matrix
eigen_result <- eigen(cov_matrix)

# Sort eigenvalues and eigenvectors in descending order
eigenvalues <- eigen_result$values
eigenvectors <- eigen_result$vectors
eigen_order <- order(eigenvalues, decreasing = TRUE)
eigenvalues <- eigenvalues[eigen_order]
eigenvectors <- eigenvectors[, eigen_order]

# Calculate the proportion of variance explained by each component
prop_var <- eigenvalues / sum(eigenvalues)

# Scree plot
plot(prop_var, type = "b", xlab = "Principal Component", ylab = "Proportion of Variance Explained")

# Choose the number of components to retain (e.g., first three components)
num_components <- 3

# Create a new dataframe with the selected components
selected_components <- as.data.frame(standardized_data %*% eigenvectors[, 1:num_components])

# Add the "Country" column back to the selected components
selected_components$Country <- countries

# Now, "selected_components" contains the data projected onto the selected principal components
principal_components <- eigenvectors[, 1:num_components]
#print(principal_components)
#print(selected_components)
print(prcomp(data[,-1], scale = TRUE))
print(prop_var)