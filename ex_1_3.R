# A
myvec <- c(seq(from=3, to=6, length.out=5), rep(c(2, -5.1, -33), times=2), 7 / 42 + 2)
print(myvec)

# B
resB <- c(myvec[1], myvec[length(myvec)])
print(resB)

# C
resC <- myvec[c(-1, -length(myvec))]
print(resC)

# D
resD <- c(resB[1], resC, resB[2])
print(myvec == resD)

# E
myvec <- sort(myvec)
print(myvec)

# F
myvec_reversed <- myvec[length(myvec):1]
print(myvec_reversed == sort(myvec, decreasing=TRUE))

# G
resG <- c(resC[c(rep(3, times=3), rep(6, times=4), length(resC))])
print(resG)

# H
resH <- resG
resH[c(1, seq(5, 7), length(resH))] <- seq(99, 95)
print(resH)
