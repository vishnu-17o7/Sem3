x = [1, 2, 3, 4, 5, 6, 7, 8, 9]
a = []
rows = 3
columns = 3
for i in range(rows):
    a.append([])
    for j in range(columns):
        a[i].append(x[columns*i+j])
print(a)

R = int(input("enter the number of rows:"))
C = int(input("enter the nuber of columns:"))

L1 = [int(x) for x in input().split()]
print("list in 1D:", L1)

a = []
for i in range(R):
    a.append([])
    for j in range(C):
        a[i].append(L1[C*i+j])
print(a)