y <- c(6.4, 15.05, 18.75, 30.25, 44.85, 48.94, 51.55, 61.5, 100.44, 111.42)
x1 <- c(1.32, 2.69, 3.56, 4.41, 5.35, 6.2, 7.12, 8.87, 9.8, 10.65)
x2 <- c(1.15, 3.4, 4.1, 8.75, 14.82, 15.15, 15.32, 18.18, 35.19, 40.4)
input <- data.frame(y, x1, x2)
print(lm(y ~ x1 + x2), data = input)