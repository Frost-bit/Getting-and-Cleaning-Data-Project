dataTrain <- read.table("train/X_train.txt")
dataTest <- read.table("test/X_test.txt")
subjectTrain <- read.table("train/subject_train.txt")
subjectTest <- read.table("test/subject_test.txt")
labelsTrain <- read.table("train/y_train.txt")
labelsTest <- read.table("test/y_test.txt")

trainSet <- cbind(subjectTrain, labelsTrain, dataTrain)
testSet <- cbind(subjectTest, labelsTest, dataTest)
mergedData <- rbind(trainSet, testSet)

features <- read.table("features.txt")[,2]
meanOrStd <- grep("mean|std", features)

mergedData <- mergedData[, c(1, 2, meanOrStd + 2)]
colnames(mergedData) <- c('Subject', 'Label', as.character(features[meanOrStd]))

activityLabels <- as.character(read.table("activity_labels.txt")[,2])
for (i in 1:6){
  mergedData$Label = sub(i, activityLabels[i], mergedData$Label, )
}

newDataSet <- c()
labels <- c()

for (subject in 1:30) {
  for (label in activityLabels) {
    means <- sapply(mergedData[mergedData$Subject == subject & mergedData$Label == label, ], mean)
    newDataSet <- rbind(newDataSet, means)
    labels <- c(labels, label)
  }
}

newDataSet <- data.frame(newDataSet)
newDataSet$Label <- labels

write.table(newDataSet, "newDataSet.txt", row.names = FALSE)
