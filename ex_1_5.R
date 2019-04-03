# A
resA <- matrix(c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5), nrow=4, ncol=2, byrow=TRUE)
print(resA)

# B
resB <- resA[-3,]
print(dim(resB))

# C
resC <- resA
resC[,2] <- sort(resC[,2])
print(resC)

# D
resD <- resC[-4, -1]
print(resD)
print(matrix(resD))

# E
resE <- resC[3:4,]
print(resE)

# F
resC[c(4, 1), c(2, 1)] <- -0.5 * diag(resE)
print(resC)
