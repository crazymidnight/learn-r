# A
resA <- c(2, 0.5, 1, 2, 0.5, 1, 2, 0.5, 1) * c(0.5, 2, 1)
print(resA)

# B
resB <- 5 / 9 * (c(45, 77, 20, 19, 101, 120, 212) - 32)
print(resB)

# C
resC <- rep(c(2, 4, 6), 2) * rep(c(1, 2), each=3)
print(resC)

# D
resC[2:5] <- c(-0.1, -100)
print(resC)
