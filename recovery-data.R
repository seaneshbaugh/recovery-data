initial.dir <- getwd()

index  <- c( 7, 27, 30, 31, 30, 37, 37, 39, 29, 29, 25, 37, 55, 67, 67, 67, 67, 68, 68, 73, 73, 86)

middle <- c(24, 49, 59, 65, 50, 61, 61, 65, 58, 58, 40, 67, 68, 75, 75, 76, 76, 75, 75, 80, 80, 89)

ring   <- c(10, 31, 34, 30, 25, 40, 40, 45, 38, 38, 30, 45, 61, 65, 65, 73, 73, 66, 66, 73, 73, 88)

small  <- c(10, 24, 35, 29, 29, 46, 46, 55, 64, 64, 20, 53, 70, 70, 70, 65, 65, 67, 67, 75, 75, 80)

grip   <- c( 0, 10, 10, 16, 15, 15, 15, 25, 24, 24, 24, 25, 31, 35, 46, 42, 46, 46, 51, 52, 52, 60)

dates <- c(
  as.Date("2014/4/14"),
  as.Date("2014/4/21"),
  as.Date("2014/4/28"),
  as.Date("2014/5/5"),
  as.Date("2014/5/12"),
  as.Date("2014/5/19"),
  as.Date("2014/5/27"),
  as.Date("2014/6/2"),
  as.Date("2014/6/10"),
  as.Date("2014/6/17"),
  as.Date("2014/7/3"),
  as.Date("2014/7/10"),
  as.Date("2014/7/17"),
  as.Date("2014/7/24"),
  as.Date("2014/7/31"),
  as.Date("2014/8/7"),
  as.Date("2014/8/12"),
  as.Date("2014/8/18"),
  as.Date("2014/8/25"),
  as.Date("2014/9/3"),
  as.Date("2014/9/10"),
  as.Date("2014/9/17"))

png("output/plot.png")

plot(dates, index, type="l", col="blue", xlab="Date", ylab="Degrees / Pounds", xaxt="n", yaxt="n", xlim=c(as.Date("2014/4/14"), as.Date("2014/9/17")), ylim=c(0, 120))

axis.Date(side=1, at=dates, labels=T, format= "%m/%d", las=2)

axis(side=2, at=c(0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120), labels=T, las=2)

par(new=T)

plot(middle, type="l", col="red", xlab="", ylab="", ylim=c(0, 110), xaxt="n", yaxt="n")

par(new=T)

plot(ring, type="l", col="yellow", xlab="", ylab="", ylim=c(0, 110), xaxt="n", yaxt="n")

par(new=T)

plot(small, type="l", col="orange", xlab="", ylab="", ylim=c(0, 110), xaxt="n", yaxt="n")

par(new=T)

plot(grip, type="l", col="black", xlab="", ylab="", ylim=c(0, 110), xaxt="n", yaxt="n")

par(new=F)

dev.off()
