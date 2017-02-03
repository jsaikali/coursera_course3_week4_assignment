## this function will combine Test and Training data sets into one
## tidy data set.

run_analysis <- function(){
  library(plyr)
  library(reshape2)
  library(dplyr)

  ## Reading in the various data sets from my local machine
  testY<-read.table("./test/y_test.txt")
  testX<-read.table("./test/X_test.txt")
  trainY<-read.table("./train/y_train.txt")
  trainX<-read.table("./train/X_train.txt")
  features<-read.table("features.txt") 
  activitylabels<-read.table("activity_labels.txt") 
  test_subjects<-read.table("./test/subject_test.txt") 
  training_subjects<-read.table("./train/subject_train.txt") 
  
  ## rename the columns from the test & training data sets 
  ## according to the names provided in the "features.txt" file. 
  xnames<-as.character(select(features,V2)[[1]])
  names(testX)<-xnames
  names(trainX)<-xnames
  
  ## add activity & subject columns to the training & test data sets
  trainX<-cbind(activity=as.factor(select(trainY,V1)[[1]]), subject=as.factor(select(training_subjects,V1)[[1]]), trainX)
  testX<-cbind(activity=as.factor(select(testY,V1)[[1]]),subject=as.factor(select(test_subjects,V1)[[1]]), testX)

  ##******************************************************************************##
  ## STEP 1: Merges the training and the test sets to create one data set
  ##******************************************************************************##
  
  ## combine the test and training data sets into one
  fulldataset<-rbind(trainX, testX)

  ##******************************************************************************##
  ## STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement.
  ##******************************************************************************##
  
  ## modify the full data set to only include
  ## mean and standard deviation columns
  cols<-grep("(mean\\(\\))|(std\\(\\))", names(fulldataset))
  cols<-c(1, 2, cols)
  fulldataset<-fulldataset[, cols]
  
  ##******************************************************************************##
  ## STEP 3: Uses descriptive activity names to name the activities in the data set
  ##******************************************************************************##
  
  ## renaming the numeric factors corresponding to activities in the 
  ## full data set according to the activity labels
  ## provided in the "activity_labels.txt" file.
  namesclean<-as.character(select(activitylabels, V2)[[1]])
  levels(fulldataset[,1])<-namesclean
  
  ##******************************************************************************##
  ## STEP 4: Appropriately labels the data set with descriptive variable names
  ##******************************************************************************##
  
  ## clean the variable names using the "clean_variables" function defined below
  fulldataset<-clean_variables(fulldataset)
  
  ##******************************************************************************##
  ## STEP 5: From the data set in step 4, creates a second, independent tidy data set 
  ## with the average of each variable for each activity and each subject.
  ##******************************************************************************##
  
  ## melt the data using activity & subject as ID variables
  measureVariables<-names(fulldataset)[3:ncol(fulldataset)]
  idVariables<-names(fulldataset)[1:2]
  meltFullData<-melt(fulldataset, id=idVariables, measure.vars=measureVariables)
  
  ## create a new data set displaying averages for each activity and each subject
  newData<-dcast(meltFullData, activity + subject ~ variable, mean)
  
  ## the following is just to sort the data nicely by activity and then by subject
  newData[,2]<-as.numeric(newData[,2])
  arrange(newData, activity, subject)
  head(newData)
  write.table(newData, file="./tidy_data_means.txt", row.names = FALSE)
}

##******************************************************************************##
## HELPER FUNCTION: clean_variables
##******************************************************************************##

## "clean_variables" is a function that cleans up a data frame's variable names 
## to make it more "tidy." In particular, this function:
## (1) removes "()" and "-"
## (2) substitutes "t" for "time"
## (3) substitutes "f" for "frequency"
## (4) substitutes "Acc" for "accelerometer"
## (5) substitutes "Gyro" for "gyroscope"
## (6) substitutes "Mag" for "magnitude"
## (7) substitutes "std" for "standarddeviation"
## (8) makes all variables lower-case
clean_variables<-function(dataframe){
  names(dataframe)<-gsub("\\(\\)", "", names(dataframe))
  names(dataframe)<-gsub("\\-", "", names(dataframe))
  names(dataframe)<-gsub("^t","time", names(dataframe))
  names(dataframe)<-gsub("^f","frequency", names(dataframe))
  names(dataframe)<-gsub("Acc","accelerometer", names(dataframe))
  names(dataframe)<-gsub("Gyro","gyroscope", names(dataframe))
  names(dataframe)<-gsub("Mag","magnitude", names(dataframe))
  names(dataframe)<-gsub("std","standarddeviation", names(dataframe))
  names(dataframe)<-tolower(names(dataframe))
  dataframe
}