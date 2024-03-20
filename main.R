# Here how to generate a random variable with the exponential distribution
u <- runif(10000, 0, 1)
x <- -log(1 - u) / 4

# Plot histogram
hist(x, probability = TRUE)

xx <- seq(from = 0, to = 10, by = 0.01)
lines(xx, 4 * exp(-4 * xx), col = "red", lwd = 2)

# Plot MGF
t <- seq(from = -1, to = 1, by = 0.01)
M <- 4 / (4 - t)

plot(t, M, type = "l", col = "blue", lwd = 3, ylim = c(0, 1.5))
points(0, 1, col = "red", lwd = 10)


# plot derivative of MGF for x
dM <- 4 / (4 - t)^2
plot(t, dM, type = "l", col = "blue", lwd = 3, ylim = c(0, 0.5))
points(0, dM[which(t == 0)], col = "red", lwd = 10)
dM[which(t == 0)]

# plot for second derivative
d2M <- 8 / (4 - t)^3
plot(t, d2M, type = "l", col = "blue", lwd = 3, ylim = c(0, 0.5))
points(0, d2M[which(t == 0)], col = "red", lwd = 10)
