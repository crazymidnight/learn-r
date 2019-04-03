# A
seqA <- seq(from=5, to=-11, by=-0.3)
print(seqA)

# B
seqA <- rev(seqA)

print("Reversed seqA:")
print(seqA)

# C
seqC <- rep(x=c(-1, 3, -5, 7, -9), each=10)

print(sort(seqC, decreasing=TRUE))

# D
resD <- c(seq(from=6, to=12), rep(5.3, times=3), -3, seq(from=102, to=length(seqA), length.out=9))

print("Result:")
print(resD)

# E
print("Length of resD:")
print(length(resD))
