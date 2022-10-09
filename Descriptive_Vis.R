#airquality <- read.csv("Cars.csv",header=TRUE, sep=",")

airquality <- datasets::airquality

###Top 10 rows and Last 10 rows

head(airquality,10)
tail(airquality,10)

###Coloumns

airquality[50:60, c(1,2)]

airquality[,-6]

#Descriptive Statistics 
#1

summary(airquality[,c(4,5)]) #generate summary for 4 and 5th column

airquality$Temp
airquality$Solar.R
airquality$Wind
airquality$Ozone

summary(airquality$Ozone)
summary(airquality$Wind)

#############################
#Visualization
#Scatter Plot

plot(airquality$Wind, type = "l")
plot(airquality$Wind, airquality$Ozone, type = "b")


plot(airquality)    #Scatter Plot

#Points and Lines
#p=point, l=lines, b=both

plot(airquality$Wind,
     airquality$Ozone,
     xlab ="Wind",
     ylab ="Ozone",
     main = "Wind and Ozone",
     col = "magenta",
     type = "l")

#Barplot

barplot(airquality$Wind,
     xlab ="Wind",
     ylab ="Ozone levels",
     main = "Wind and Ozone",
     col = "magenta",
     horiz = "T")

#Histogram

hist(airquality$Temp,
     col = "red",
     border = "blue",
     main = "Graph of Temp",
     xlab = 'index',
     ylab = "frequency")

#boxplot

boxplot(airquality$Wind)

boxplot.stats(airquality$Wind)$out    #it shows outlier values from the data

#multiple box plots

boxplot(airquality[,1:4],
        main="Multiple Grapph",
        col="red")

###Multiple Chart

#margin of the grid(mar)
#no of rows and coloumns(mfrow)
#whether a border is to be included(bty) and position of the 
#labels(las:1 for horizontal, las:0 for vertical)
#bty box around the plot

par(mfrow=c(3,3), mar=c(2,5,2,1), las=0, bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type = "l")
plot(airquality$Ozone, type = "l")
plot(airquality$Ozone, type = "l")
barplot(airquality$Ozone)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4])

