
s<-matrix(c(5,2,2,2),nrow=2,ncol=2)
print(eigen(s))
eigen_value<-eigen(s)$values
e<-eigen(s)$vectors
e1<-e[,1]
e2<-e[,2]
y1<-(t(e1) %*% s[,1])
y2<-(t(e2) %*% s[,2])
print("---PRINCIPAL COMPONENTS---")
print(y1)
print(y2)
print("---POPULATION PROPORTION---")
print(eigen_value[1] / sum(eigen_value))
eigen_value <- data.frame(
  PC = c(1, 2),
  Eigenvalue = eigen_value
)
ggplot(eigen_value, aes(x = PC, y = Eigenvalue)) +
  geom_point(shape = 16) +
  geom_line() +
  labs(
    x = "Principal Component",
    y = "Eigenvalue",
    title = "Scree Plot"
  )