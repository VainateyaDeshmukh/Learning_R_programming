#Syntax: pie(x,labels,radius,main,col,clockwise)
#x: is avector conatroning the numeric valiues
# labels: is used to give description to the slices
#radius indicates  the radius
#main indicates the title of the chart
# col indicates the color palette
# clockvise is a logical value indicating 

#
x=c(10,20,30,40)
companies=c("nik","hoho","pika","zolo")
pie(x,labels=companies,main="rainbow")

#
colors=c("Red","blue","violet","yellow")
pie(x,labels=companies,col=colors,main="rainbow")
legend("topright",cex=0.8, fill=rainbow(length(turnover))
#
install.packages("plotrix")
library(plotrix)
pie3D(x,labels=comapnies,main="ktb")
#
#Bar : Syntax: barplot(H,xlab,ylab,main,names.arg,col)
#H: vecor matrix
#xlab: label or x
#ylab: label for y
#main:  title
#names.arg: is a vector of names having same number 
# col: color

month=c('Jan','feb','mar','dec')
rev=c(30,20,50,70)
barplot(rev,names.arg=month,xlab='Month',ylab="revenue",main='Revenue chart',border="red")

#
colors=c("Red","blue","violet","yellow")
revmatrix=matrix(c(2,3,4,5,6,7,8,4,3,4,13,17), nrow=4,ncol=6, byrow=TRUE)
barplot(revmatrix,main="Total revenue", names.arg=month,xlab='Month',ylab="revenue", col=colors)
#
#histogram: Syntax: hist(y,main,xlab,xlim,breaks,col,border)
#y:vector

hist(rev,xlab="yoyo",col='blue',border='red')

#line: syntax: plot(u,type,col,xlab,ylab)

plot(rev,col="red",type='l')
lines(rev,col="red",type='b')
lines(x,col="blue",type='o')

#Box plot
str(mtcars)
boxplot(mpg~cyl,data=mtcars, xlab="No. of Cylinders", ylab="Miles per Gallon", main= 'Mdata', names=c("High","Medium","low"))

#vioplot
install.packages(vioplot)
library(vioplot)
x1=mtcars$mpg[mtcars$cy]==4]
x2=mtcars$mpg[mtcars$cy]==6]
x3=mtcars$mpg[mtcars$cy]==8]

vioplot(x1,x2,x3,names=c("Four Cylinders","Six Cylinders","Eight Cylinders"),col="pink")

#Image plot
image(1:5,1:5,cor(mtcars[,1:5]),col=heat.colors(25))

#
library(MASS)
str(survey)

plot(mtcars$mpg,mtcars$cyl)

#Scatter plot matrix
pairs(~wt+mpg+disp+cyl+qsec, data=mtcars, main="Scatterplot Matrix", col="red")

#Corrgram
install.packages("corrgram")
library(corrgram)

corrgram(mtcars, order=TRUE, lower.panel = panel.shade,upper.panel = panel.pie,text.panel = panel.txt, main="Correlation")

corrgram(mtcars, order=TRUE, lower.panel=panel.ellipse,
         upper.panel=panel.pts, text.panel=panel.txt,
         diag.panel=panel.minmax, 
         main="Car Mileage Data in PC2/PC1 Order")
#Stars
stars(mtcars)
stars(mtcars[1:4])
stars(mtcars[1:4],key.loc = c(14,18),main="Star motor vehicles")
stars(mtcars[1:4],key.loc = c(14,18),main="Star motor vehicles",draw.segments=TRUE)

# Tree map
install.packages("treemap")
library(treemap)
treemap(mtcars,index=c("gear"),vSize="mpg")

#ggplot2   (bahut pyara he ye,according to ma'am)
install.packages("ggplot2")
library(ggplot2)
#geom point
ggplot(data=mtcars,aes(x=hp,y=mpg))+geom_point(pch=16,color="green",size=3)+labs(title = "Mtcars data",x= "Milage per gallon")
#Geom Smooth
ggplot(data=mtcars,aes(x=hp,y=mpg))+geom_point(pch=16,color="green",size=3)+geom_smooth(method="lm",color="black",linetype=3)+labs(title="Mtcars data", x="Horse Power",y="Miles per gallon")
# Geom histogram
ggplot(data=mtcars,aes(x=mpg))+geom_histogram()+labs(title="Histogram for miles per gallon",x="Miles per gallon")
