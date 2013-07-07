means <- c(-1/4, 1/4)

x <- seq(-4, 4, length=100)
hx <- dnorm(x, mean = means[1], sd = 1)

colors <- c("red", "blue", "darkgreen", "gold", "black")
labels <- c("class 1", "class 2")

postscript('signal-nodes.eps', width = 1400, height = 600)
plot(x, hx, type="l", xlab="x value", col = colors[1],
  ylab="Density", main="Signal Nodes", xlim=c(-4, 4))

lines(seq(-4, 4, length=100), dnorm(x, mean=means[2], sd=1)
                                           , lwd=2, col=colors[2])

legend("topright", inset=.05, title="Distributions",
  labels, lwd=2, lty=c(1, 1, 1, 1, 2), col=colors)
dev.off()


x <- seq(-4, 4, length=100)
hx <- dnorm(x)

postscript('random-nodes.eps', width = 1400, height = 600)
plot(x, hx, type="l", xlab="x value", col = colors[2],
  ylab="Density", main="Random Nodes", xlim=c(-4,4))
dev.off()
