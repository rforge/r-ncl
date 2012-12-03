op = par(no.readonly = TRUE)
#########################################
##Create a data frame to store the output
N = 1000
df_randu = data.frame(x=numeric(N), y=numeric(N), 
                      z=numeric(N))
##Simulate from the randu random number generator
new_z = 1
for(i in 1:N) {
  new_x = (65539*new_z) %% 2^31
  new_y = (65539*new_x) %% 2^31
  new_z = (65539*new_y) %% 2^31
  df_randu[i,] = c(x=new_x/2^31, y=new_y/2^31, 
                   z=new_z/2^31)
}


##Simulate from the RNG in R
df_g = data.frame(x=numeric(N), y=numeric(N), 
                  z=numeric(N))
for(i in 1:N) {
  new_x = runif(1)
  new_y = runif(1)
  new_z = runif(1)
  df_g[i,] = c(x_g=new_x, y_g=new_y, z_g=new_z)
}

##Plot the results
par(mfrow=c(1, 2), mar=c(3,3,2,1), 
    mgp=c(2,0.4,0), tck=-.01,
    cex.axis=0.9, las=1)
plot(df_randu$z, 9*df_randu$x - 6*df_randu$y, ylim=c(-6, 10),
     xlab="Z", ylab="9*X - 6*Y", cex=0.5, main="RANDU")
plot(df_g$z, 9*df_g$x - 6*df_g$y,
     xlab="Z", ylab="9*X - 6*Y", cex=0.5,ylim=c(-6, 10))

par(op)



