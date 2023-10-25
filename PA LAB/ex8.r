# Function to perform Linear Discriminant Analysis (LDA) projection
lda_projection <- function(data) {
    library(MASS) # Load the MASS package for LDA function

    # Split the data into passed and not passed classes
    passed_data <- data[data$control_result == "passed", ]
    not_passed_data <- data[data$control_result == "Not passed", ]

    # Perform LDA
    lda_result <- lda(control_result ~ curvature + diameter_quality, data = data)

    # Project the data onto the LDA space
    projected_data <- predict(lda_result, data)$x

    return(lda_result)
}

# Given data
data <- data.frame(
    curvature = c(4, 2, 2, 3, 4, 9, 6, 9, 8, 10),
    diameter_quality = c(2, 4, 3, 6, 4, 10, 8, 5, 7, 8),
    control_result = c("passed", "passed", "passed", "passed", "passed", "Not passed", "Not passed", "Not passed", "Not passed", "Not passed")
)

# Perform LDA projection
result <- lda_projection(data)

# Print the projected data
print(result)
