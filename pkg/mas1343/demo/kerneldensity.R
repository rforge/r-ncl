op = par(no.readonly = TRUE)
## Suppose we observe three points -2, -1, 2\ and we want to use kernel
## density estimation to approximate the underlying distribution. 
## First, let's plot the data:

z = c(-2, -1, 2)
x = seq(-5, 5, 0.01)
##Create an empty plot
par(mfrow=c(1, 2), mar=c(3,3,2,1), 
    mgp=c(2,0.4,0), tck=-.01,
    cex.axis=0.9, las=1)
plot(0, 0, xlim=c(-5, 5), ylim=c(-0.02, 0.8), 
     pch=NA, ylab="", xlab="z")
for(i in 1:length(z)) {
  points(z[i], 0, pch="X", col=2)
}
abline(h=0)
readline("Press enter to continue")

## Now we combine the kernels,
x_total = numeric(length(x))
for(i in 1:length(x_total)) {
  for(j in 1:length(z)) {
    x_total[i] = x_total[i] + 
      dnorm(x[i], z[j], sd=1)
  }
}
lines(x, x_total, col=4, lty=2)
readline("Press enter to continue")

## Just as a histogram is the sum of the boxes, 
## the kernel density estimate is just the sum of the bumps. 
## All that's left to do, is ensure that the estimate has the
## correct area, i.e. in this case we divide by $n=3$:
plot(x, x_total/3, 
       xlim=c(-5, 5), ylim=c(-0.02, 0.8), 
       ylab="", xlab="z", type="l")
abline(h=0)


par(op)