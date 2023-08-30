a <- c(14, 15, 1, 6, 5, 3, 10, 2, 4, 9, 7, 8, 12, 13, 11)
b <- c(15, 13, 11, 3, 5, 8, 4, 7, 10, 2, 1, 6, 9, 12, 14)
c <- c(12, 11, 6, 4, 9, 8, 1, 2, 3, 10, 5, 7, 15, 14, 13)

cor_ab <- cor(a, b, method = "spearman")
cor_ac <- cor(a, c, method = "spearman")
cor_bc <- cor(b, c, method = "spearman")

result <- max(cor_ab, cor_ac, cor_bc)
cat(cor_ab, cor_ac, cor_bc, "\n")
if (result == cor_ab) {
  judges_pair <- c("a", "b")
} else if (result == cor_ac) {
  judges_pair <- c("a", "c")
} else {
  judges_pair <- c("b", "c")
}

print(paste("Judges pair with nearest approach:", judges_pair))
print(paste("Maximum correlation:", result))
