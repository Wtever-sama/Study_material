qt(0.975, 3)
qt(0.025, 3)
1/qchisq(0.975, 3)
qchisq(0.025, 3)
qf(0.975, 3, 3)
qf(0.025, 3, 3)
1/qf(0.975, 3, 3)

x <- c(628,583,510,554,612,523,530,615)
y<- c(535,433, 398, 470, 567, 490, 498, 560, 503, 426)

bx<-mean(x)
by<-mean(y)

vx<- var(x)
vy<- var(y)

sw <- (((length(x) - 1) * vx + (length(y) - 1) * vy) / (length(x) + length(y) - 2))^0.5

t<- qt(0.975, length(x) + length(y) - 2)

c <- ((length(x)+length(y))/(length(x)*length(y)))^0.5

(l<- (bx - by)-c*t*sw)
(r<- (bx - by)+c*t*sw)

x<- c(5.06,5.08,5.03,5,5.07)
y<-c(4.98,5.03,4.97, 4.99, 5.02, 4.95)

(sx2 <- var(x))
(sy2 <- var(y))

ss <- sx2 / sy2

(fa<-qf(0.025, length(x) - 1, length(y) - 1))
(f1_a <-qf(0.975, length(x) - 1, length(y) - 1))

(l<- 1/f1_a*ss)
(r<- 1/fa*ss)

x <- qnorm(0.975,0,1)
#1.96/2

pnorm(x-1,0,1)-pnorm(-x-1,0,1)


x <- c(8.05,8.15,8.2,8.1, 8.25)
(bx<-mean(x))
(p3<-2*(1-pnorm((bx-8)/0.2*5^0.5, 0, 1)))

x<-c(239.7,239.6,239,240,239.2)
(bx<-mean(x))
(s<-sd(x))
(t_0<-(bx-240)/(s/5^0.5))
2*pt(t_0, 4)
(p3<-2*(1-pt(abs(t_0), 4)))

x<- c(76.63, 76.21, 73.58, 69.69, 65.29, 70.83, 82.75, 72.34)
y<- c(73.66, 64.27, 69.34, 71.37, 69.77, 68.12, 67.27, 68.07, 62.61)
(bx<-mean(x))
(by<-mean(y))
sw_2<- (7*var(x)+8*var(y))/(7+8)
(t<- (bx-by)/(sw_2^0.5*(1/8+1/9)^0.5))
(t_l<-qt(0.95, 15))

(chs <- 24*0.025/0.016)
(chs_l<- qchisq(0.95, 24))

x <- c(16.2, 16.4, 15.8, 15.5, 16.7, 15.6, 15.8)
y<- c(15.9, 16, 16.4, 16.1, 16.5, 15.8, 15.7, 15)
var(x)
var(y)
(f <- var(x)/var(y))
(l <- qf(0.025, 6,7))
(r <- qf(0.975, 6,7))

1-pbinom(6, 20, 0.4)
?pbinom

1-pchisq(12, 5)

qt(0.975, 40)
qf(0.025,20,20)
qf(0.975,20,20)
qt(0.975,22)

qf(0.025,11,11)
qf(0.95,2,9)


x <- c(16.5, 16.7, 17.1, 17.1, 17.8, 18.4)
var(x)
(length(x)-1)*var(x)
(sd(x))^2
length(x)*sd(x)^2
?var

1-pf(211/19, 2, 9)

barx<-82
bary<- 76
w<-barx-bary
sigma <- (64/10+49/15)^0.5
n<-10+15
u <- qnorm(0.975, 0, 1)
(l <- w-u*sigma)
(r <- w+u*sigma)

t<- qt(0.975, 23)
sw<-((9*56.5+14*52.4)/(9+14))^0.5
sq <- (1/10+1/15)^0.5
(l<-(barx-bary)-t*sw*sq)
(r<-(barx-bary)+t*sw*sq)

(l <- 56.5/52.4/qf(0.975,9,14))
(r <- 56.5/52.4/qf(0.025,9,14))

qpois(0.95,lambda = 3)
