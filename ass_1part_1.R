#*PART 1 A -- Extracting the data frame form the file
myCarsList<-data.frame(read.csv(file.choose(), header=TRUE, sep=';'))
myCarsList

#*Taking the first six rows of the data frame
head(myCarsList, 6)

#*B -- 
#*Deleting the first row containing the data types of the columns
myCarsList <- myCarsList[c(-1),]

#*Printing the number of rows and columns of the dataframe
print(paste("The number of rows of the data frame are: ", nrow(myCarsList)))
print(paste("The number of columns of the data frame are: ", ncol(myCarsList)))

#*C -- 
#*Changing the data type of columns
lapply(myCarsList,class) 
#*The class of the columns is also checked by running the commands individually: -
#*class(myCarsList$Car)
#*class(myCarsList$MPG)
#*class(myCarsList$Cylinders)
#*class(myCarsList$Displacement)
#*class(myCarsList$Horsepower)
#*class(myCarsList$Weight)
#*class(myCarsList$Acceleration)
#*class(myCarsList$Model)
#*class(myCarsList$Origin)


#*Changing the data types or the class of the columns: -

myCarsList$MPG <- as.numeric(myCarsList$MPG)
myCarsList$Cylinders <- as.numeric(myCarsList$Cylinders)
#mycarsList <- as.integer(myCarsList$Cylinders)
myCarsList$Displacement <- as.numeric(myCarsList$Displacement)
myCarsList$Horsepower <- as.numeric(myCarsList$Horsepower)
myCarsList$Weight <- as.numeric(myCarsList$Weight)
myCarsList$Acceleration <- as.numeric(myCarsList$Acceleration)
myCarsList$Model <- as.numeric(myCarsList$Model)
myCarsList$Origin <- as.factor((myCarsList$Origin))


#****************************** D**********************************
#*Calculating the max value of MPG
maxValue <- max(myCarsList$MPG, na.rm = TRUE)

#Displaying the model with that max value of MPG
modelValue <- (subset(myCarsList, myCarsList$MPG == maxValue, select = Model))
print(modelValue)
#Displaying the only model number with that max value of MPG
#modelValue <- (subset(myCarsList$Model, myCarsList$MPG == maxValue))
#print(modelValue)


#*Calculating and displaying the subset of the data whose horsepower is greater than 100

horsePowerValue <- (subset(myCarsList, (Horsepower > 100), select = Model))
#Putting the result in the file Horsepower.csv
write.csv(horsePowerValue, "Horsepower.csv")
print(horsePowerValue)


#*Calculating and displaying the subset of the data whose acceleration is less than 15
accerelationValue <- (subset(myCarsList, (Acceleration < 15), select = Model))
write.csv(accerelationValue, "Acceleration.csv")
print(accerelationValue)


#help(hist)
#collecting teh histogram data
histogramData <- c(myCarsList[,2])
hist(histogramData, breaks = 9, main="MPG Histogram", col = "red", xlab="MPG")

