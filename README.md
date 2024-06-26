﻿# RunTimeWebsite_Rcode

## Project Overview

This project focuses on demonstrating how to generate random variables following an exponential distribution using R, and how to visualize these distributions through histograms and plots of the moment generating function (MGF) and its derivatives. The exponential distribution is widely used in the field of statistics and engineering for modeling time until an event, such as system failure times in reliability engineering.

## Getting Started

### Prerequisites

Ensure you have R installed on your machine. The code provided in this project was written using R. No additional packages are required for the basic operations, but make sure your R environment is up to date.

## Installation

No additional installation is required. You can run this project within RStudio, R console, or any environment that supports R.

## Usage

The project consists of several parts:

Generating Random Variables with Exponential Distribution: We use the transformation method to generate random variables from a uniform distribution and transform them to follow an exponential distribution.

```R
u <- runif(10000, 0, 1)
x <- -log(1 - u) / 4
```

Plotting Histogram: A histogram of the generated exponential random variables is plotted, with the theoretical density function overlayed in red.

```R
hist(x, probability = TRUE)
xx <- seq(from = 0, to = 10, by = 0.01)
lines(xx, 4 * exp(-4 * xx), col = "red", lwd = 2)
```

Plotting the Moment Generating Function (MGF): The MGF of the exponential distribution is plotted, with a specific point highlighted to illustrate its value at t=0.

```R
t <- seq(from = -1, to = 1, by = 0.01)
M <- 4 / (4 - t)
plot(t, M, type = "l", col = "blue", lwd = 3, ylim = c(0, 1.5))
points(0, 1, col = "red", lwd = 10)
```

Derivatives of the MGF: Plots for the first and second derivatives of the MGF are generated, illustrating the behavior of these functions across different values of t.

```R
# First derivative
dM <- 4 / (4 - t)^2
plot(t, dM, type = "l", col = "blue", lwd = 3, ylim = c(0, 0.5))
points(0, dM[which(t == 0)], col = "red", lwd = 10)

# Second derivative
d2M <- 8 / (4 - t)^3
plot(t, d2M, type = "l", col = "blue", lwd = 3, ylim = c(0, 0.5))
points(0, d2M[which(t == 0)], col = "red", lwd = 10)
```

## Contributing

feel free to contribute to this project

### Math is fun
