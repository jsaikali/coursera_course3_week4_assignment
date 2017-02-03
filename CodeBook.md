#  CODE BOOK

## Variables

Naming Convention Note: for these variables, naming conventions may include the following phrases
1. 'time': indicates time domain signals captured at a constant rate of 50 Hz
2. 'frequency': indicates frequency domain signals captured 
3. 'accelerometer': indicates that the signals came from the accelerometer
4. 'gyroscope': indicates that the signals came from the gyroscope
5. 'body': indicates body acceleration signals
6. 'gravity': indicates gravity acceleration signals
7. 'magnitude': indicates the magnitude of these three-dimensional signals, calculated using the Euclidean norm 
8. 'jerk': indicates cases where the body linear acceleration and angular velocity were derived in time to obtain Jerk signals
9. 'standarddeviation': indicates that the standard deviation variable was estimated from this signal
10. 'mean': indicates that the mean variable was estimated from this signal
11. 'x': indicates axial signal in the x direction
12. 'y': indicates axial signal in the y direction
13. 'z': indicates axial signal in the z direction

### The Variables Part I:
- "activity": values can be WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- "subject": values can be integers 1-30 identifying which subject performed the given experiment.

### The Variables Part II:
The mean of the following variables were taken and displayed in the tidy data set. The understanding of each variable is deciphered through the naming convention notes above.
- "timebodyaccelerometermeanx"
- "timebodyaccelerometermeany" 
- "timebodyaccelerometermeanz" 
- "timebodyaccelerometerstandarddeviationx"
- "timebodyaccelerometerstandarddeviationy" 
- "timebodyaccelerometerstandarddeviationz" 
- "timegravityaccelerometermeanx" 
- "timegravityaccelerometermeany" 
- "timegravityaccelerometermeanz" 
- "timegravityaccelerometerstandarddeviationx" 
- "timegravityaccelerometerstandarddeviationy" 
- "timegravityaccelerometerstandarddeviationz" 
- "timebodyaccelerometerjerkmeanx" 
- "timebodyaccelerometerjerkmeany" 
- "timebodyaccelerometerjerkmeanz" 
- "timebodyaccelerometerjerkstandarddeviationx" 
- "timebodyaccelerometerjerkstandarddeviationy" 
- "timebodyaccelerometerjerkstandarddeviationz" 
- "timebodygyroscopemeanx" 
- "timebodygyroscopemeany" 
- "timebodygyroscopemeanz" 
- "timebodygyroscopestandarddeviationx" 
- "timebodygyroscopestandarddeviationy" 
- "timebodygyroscopestandarddeviationz" 
- "timebodygyroscopejerkmeanx" 
- "timebodygyroscopejerkmeany" 
- "timebodygyroscopejerkmeanz" 
- "timebodygyroscopejerkstandarddeviationx" 
- "timebodygyroscopejerkstandarddeviationy" 
- "timebodygyroscopejerkstandarddeviationz" 
- "timebodyaccelerometermagnitudemean" 
- "timebodyaccelerometermagnitudestandarddeviation"
- "timegravityaccelerometermagnitudemean" 
- "timegravityaccelerometermagnitudestandarddeviation" 
- "timebodyaccelerometerjerkmagnitudemean" 
- "timebodyaccelerometerjerkmagnitudestandarddeviation" 
- "timebodygyroscopemagnitudemean" 
- "timebodygyroscopemagnitudestandarddeviation" 
- "timebodygyroscopejerkmagnitudemean" 
- "timebodygyroscopejerkmagnitudestandarddeviation" 
- "frequencybodyaccelerometermeanx" 
- "frequencybodyaccelerometermeany" 
- "frequencybodyaccelerometermeanz"
- "frequencybodyaccelerometerstandarddeviationx" 
- "frequencybodyaccelerometerstandarddeviationy" 
- "frequencybodyaccelerometerstandarddeviationz" 
- "frequencybodyaccelerometerjerkmeanx" 
- "frequencybodyaccelerometerjerkmeany" 
- "frequencybodyaccelerometerjerkmeanz" 
- "frequencybodyaccelerometerjerkstandarddeviationx" 
- "frequencybodyaccelerometerjerkstandarddeviationy" 
- "frequencybodyaccelerometerjerkstandarddeviationz" 
- "frequencybodygyroscopemeanx" 
- "frequencybodygyroscopemeany" 
- "frequencybodygyroscopemeanz" 
- "frequencybodygyroscopestandarddeviationx" 
- "frequencybodygyroscopestandarddeviationy" 
- "frequencybodygyroscopestandarddeviationz" 
- "frequencybodyaccelerometermagnitudemean" 
- "frequencybodyaccelerometermagnitudestandarddeviation" 
- "frequencybodyaccelerometerjerkmagnitudemean" 
- "frequencybodyaccelerometerjerkmagnitudestandarddeviation" 
- "frequencybodygyroscopemagnitudemean" 
- "frequencybodygyroscopemagnitudestandarddeviation" 
- "frequencybodygyroscopejerkmagnitudemean" 
- "frequencybodygyroscopejerkmagnitudestandarddeviation"

## STUDY DESIGN
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