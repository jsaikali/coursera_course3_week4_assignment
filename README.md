# Getting and Cleaning Data README

## Background: Where this data comes from
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The following datasets were used for this project:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Files included in this repository:
- ‘README.md’
- ‘CodeBook.md’: a markdown file outlining the list of variables and study design
- ‘run_analysis.R’: the R script that creates a tidy data set from test and training data sets from the Samsung data zip file provided in the course assignment.

## Study Design: How the Script Works
Below are the steps taken by the R code to analyze the data set as provided by the Samsung zip file:
  1. Prior to running run_analysis.R, the understanding is that the user has installed packages plyr, reshape2, and dplyr.
  2. The libraries for plyr, reshape2, and dplyr are loaded into run_analysis.R
  3. Data sets are read from the local machine. In the working directory, it is required to have the following files: "./test/y_test.txt", "./test/X_test.txt", "./train/y_train.txt", "./train/X_train.txt", "features.txt", "activity_labels.txt", "./test/subject_test.txt", "./train/subject_train.txt"
  4. Renames columns in the test and training data sets according to names provided in the "features.txt" file. 
  5. Adds activity & subject columns to the training & test data sets
  6. Merges the training and the test sets to create one data set
  7. Extracts only the measurements on the mean and standard deviation for each measurement.
  8. Uses descriptive activity names to name the activities in the data set by renaming the data set's numeric factors according to activity labels in the "activity_labels.txt" file
  9. Modifies the variable names using helper function "clean variables" in order to adhere to tidy data principles
  10. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. This is exported as a file called "tidy_data_means.txt"
