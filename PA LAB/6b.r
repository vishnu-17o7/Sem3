p <- c(15, 16, 18, 18, 23, 23, 20, 28, 29, 33, 33, 38)
q <- c(23, 22, 28, 27, 31, 38, 22, 28, 32, 37, 34, 44)
r <- c(25, 25, 35, 36, 36, 30, 30, 34, 38, 47, 41, 53)
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36)
n <- length(p)
yt <- c(p, q, r)
model <- lm(yt ~ x)
b0 <- coef(model)[1]
b1 <- coef(model)[2]
print(model)
monthly_avg <- c()
si <- c()
ds <- c()
ft <- c()
syf <- c()
yf <- c()
fdt <- c()
for (i in 1:n) {
    monthly_avg[i] <- ((p[i] + q[i] + r[i]) / 3)
}
avg <- mean(monthly_avg)
print("---SEASONALITY INDEX---")
cat("\n")
for (i in 1:n) {
    si[i] <- (monthly_avg[i] / avg)
}
print(si)
si <- c(si, si, si)
cat("\n")
print("---DESEASONALISED DATA---")
cat("\n")
for (i in 1:(n * 3)) {
    ds[i] <- yt[i] / si[i]
}
print(ds)
for (i in 1:(n * 3)) {
    fdt[i] <- (b0 + (b1 * x[i]))
}
for (i in 1:(n * 3)) {
    ft[i] <- fdt[i] * si[i]
}
cat("\n")
print(" ---FORECAST MODEL---")
cat("\n")
print("  --Fdt--  ")
cat("\n")
print(fdt)
cat("\n")
print("  --Ft--  ")
cat("\n")
print(ft)
for (i in 1:(n * 3)) {
    syf[i] <- ((yt[i] - ft[i])^2)
    yf[i] <- (yt[i] - ft[i])
}
cat("\n")
print("  --(yt-ft)^2--  ")
print(syf)
cat("\n")
print("  --(yt-ft)--  ")
cat("\n")
print(yf)
rmse <- sqrt((sum(syf)) / length(yt))
cat("\n")
print(paste("RMSE: ", rmse))
cat("\n")
mape <- ((1 / length(yt)) * ((sum(yf / yt))) * 100)
print(paste("MAPE: ", mape))
