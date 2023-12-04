library(AppliedPredictiveModeling)
library(caret)

input <- function(inputfile) {
   myData <<- read.csv(inputfile)
}

run <- function() {}

output <- function(outputfile) {

#data(mdrr)
nzv <- nearZeroVar(myData)
filteredDescr <- myData[, -nzv]

descrCor <-  cor(filteredDescr)
print(summary(descrCor[upper.tri(descrCor)]))

}
