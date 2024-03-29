setwd("F:/R/Paolo/Test")

dat = read.csv("Stock_FX_Bond.csv",header=TRUE)
names(dat)
attach(dat)
par(mfrow=c(1,2))
# plot(GM_AC)
# plot(F_AC)

n = dim(dat)[1]
GMReturn = GM_AC[2:n]/GM_AC[1:(n-1)] - 1
FReturn = F_AC[2:n]/F_AC[1:(n-1)] - 1
par(mfrow=c(1,1))

png(file="TestPlot.png",width=7,height=5,units="in",res=100)
plot(GMReturn,FReturn)
dev.off()


out <- data.frame(GMReturn, FReturn)
write.csv(out, "TestOutput.csv")
