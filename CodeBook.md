#  CODE BOOK

## Variables

Naming Convention Note: for these variables, naming conventions may include the following phrases:
  * 'time': indicates time domain signals captured at a constant rate of 50 Hz
  *  'frequency': indicates frequency domain signals captured 
  *  'accelerometer': indicates that the signals came from the accelerometer
  *  'gyroscope': indicates that the signals came from the gyroscope
  *  'body': indicates body acceleration signals
  *  'gravity': indicates gravity acceleration signals
  *  'magnitude': indicates the magnitude of these three-dimensional signals, calculated using the Euclidean norm 
  *  'jerk': indicates cases where the body linear acceleration and angular velocity were derived in time to obtain Jerk signals
  *  'standarddeviation': indicates that the standard deviation variable was estimated from this signal
  *  'mean': indicates that the mean variable was estimated from this signal
  *  'x': indicates axial signal in the x direction
  *  'y': indicates axial signal in the y direction
  *  'z': indicates axial signal in the z direction

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
