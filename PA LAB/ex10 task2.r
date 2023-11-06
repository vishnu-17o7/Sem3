library(tidyverse)
data('USArrests')
head(USArrests)

results <- prcomp(USArrests, scale = TRUE)
results$rotation <- -1 * results$rotation
print(results$rotation)

results$x <- -1 * results$x
head(results$x)

biplot(results, scale = 0)

print(head(USArrests[order(-USArrests$Murder), ]))

var_res <- results$sdev ^ 2 / sum(results$sdev ^ 2)
#plot(var_res, type = 'b', xlab = 'Principal Component', ylab = 'Proportion of Variance Explained')