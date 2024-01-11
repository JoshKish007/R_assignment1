#******************************************************Part II*********************************************************
#*A
#*Creating two vectors aVec and bVec
set.seed(75)
aVec <- sample(c(0:500), size=50, replace = TRUE)
bVec <- sample(c(0:500), size=50, replace = TRUE)

#*Showing them to the console
aVec
bVec


#*B
#*Calculating the subtraction of aVec(from 1 to 49) from bVec(from 2 to 50)
diffVector <- bVec[2:50] - aVec[1:49]
diffVector
#Storing them in the matrix of 7 by 7 not by row but by column
Matrix <- matrix(bVec[2:50] - aVec[1:49], nrow=7, ncol = 7)
#Matrix <-cbind(matrix(bVec[2:50] - aVec[1:49], nrow=7, ncol = 7, byrow = FALSE))
Matrix

#*C
#*result of cos/sin of individual components: -
i<-c(1:49)
ResultantVector <- c()
for(j in i){
  ResultantVector[j] = (cos(bVec[j]) / sin(aVec[j+1]))
}
ResultantVector

#Another method for the result: -
#*Making the separate vectors that stores the values of cosine function and sin function 
#*such that in the case of aVec it takes values from 2 to 50 and in case of bVec it takes values from 1 to 49
#*Hence diving the result and further storing the values in the resultantVector
#*
#*
#*resultVector<-c(size=50)
#*cosPart <- cos(bVec[1:50-1])
#*sinPart <- sin(aVec[2:50])
#*resultVector <- cosPart/sinPart
#*resultVector

#*D:- 
#*Result of the series:-
#*
#Considering according to question the a which is aVec
answer =0
for(j in i){
  numeratorResult <- exp(-aVec[j+1])
  denominatorResult <- aVec[j] + 5
  answer=answer+ numeratorResult/denominatorResult
}
print(paste("The result of the summation is: ", answer))

s