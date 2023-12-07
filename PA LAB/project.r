library(dplyr)
data <- read.csv("StudentEducation.csv")

filtered_data <- filter(data, Year >= 1991 & Year <= 2011)


YEAR <- filtered_data[1]
BOYS_ENROLLED <- filtered_data[2] + filtered_data[5] + filtered_data[8]
boys_enrolled <- data.frame(YEAR, BOYS_ENROLLED)

GIRLS_ENROLLED <- filtered_data[3] + filtered_data[6] + filtered_data[9]
girls_enrolled <- data.frame(YEAR, GIRLS_ENROLLED)
girls_enrolled


plot_data <- data.frame(YEAR, BOYS_ENROLLED, GIRLS_ENROLLED)
barplot(
  height = t(as.matrix(plot_data[, -1])),  # Transpose the matrix
  beside = TRUE,
  col = c("blue", "pink"),  # Colors for boys and girls
  names.arg = plot_data$YEAR,
  legend.text = c("Boys", "Girls"),
  xlab = "Year",
  ylab = "Enrollment",
  main = "Boys and Girls Enrollment Over Years"
)

BOYS_ENROLLED2 <- filtered_data[11]
boys_enrolled2 <- data.frame(YEAR, BOYS_ENROLLED2)

GIRLS_ENROLLED2 <- filtered_data[12]
girls_enrolled2 <- data.frame(YEAR, GIRLS_ENROLLED2)

plot_data2 <- data.frame(YEAR, BOYS_ENROLLED2, GIRLS_ENROLLED2)
barplot(
  height = t(as.matrix(plot_data2[, -1])),  # Transpose the matrix
  beside = TRUE,
  col = c("blue", "pink"),  # Colors for boys and girls
  names.arg = plot_data2$YEAR,
  legend.text = c("Boys", "Girls"),
  xlab = "Year",
  ylab = "Enrollment",
  main = "Boys and Girls Enrollment Over Years"
)