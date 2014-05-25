## Getting and Cleaning Data (Course Project 1)

This CodeBook describes the variables and any transformations used to create the output produced by the script run_analysis.R

### Initial Feature Selection

The original source file identified a number of features for analysis, it is described as follows:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

### Modifications and Transformations

Based off the original data sources, a number of changes were made. The training and testing datasets were combined and two columns were added to the data to allow for the identification of the subject as well as the activity being performed.

There are 30 subjects that have participated in the study who have taken part in up to 6 activities, including:
* LAYING
* SITTING
* STANDING
* WALKING
* WALKING_DOWNSTAIRS
* WALKING_UPSTAIRS

The rest of the data from the original source files were then averaged based on the subject and the activity. 

The resultant dataset was stripped down in order to only look at features relating to mean and standard deviation. Note, that mean frequency was not included as it is a weighted average of the frequency components.

As a result, the output consists of 180 observations of 68 variables.

### Output Variables

The following are the resultant variables that can be found in the output.

Note: The variable names have been cleaned up compared to the original source file to be more informative and follows the guidelines set out by the Coursera course 'Getting and Cleaning Data':

* activity
* subjectid
* timebodyaccelerometermeanx
* timebodyaccelerometermeany
* timebodyaccelerometermeanz
* timebodyaccelerometerstandarddeviationx
* timebodyaccelerometerstandarddeviationy
* timebodyaccelerometerstandarddeviationz
* timegravityaccelerometermeanx
* timegravityaccelerometermeany
* timegravityaccelerometermeanz
* timegravityaccelerometerstandarddeviationx
* timegravityaccelerometerstandarddeviationy
* timegravityaccelerometerstandarddeviationz
* timebodyaccelerometerjerkmeanx
* timebodyaccelerometerjerkmeany
* timebodyaccelerometerjerkmeanz
* timebodyaccelerometerjerkstandarddeviationx
* timebodyaccelerometerjerkstandarddeviationy
* timebodyaccelerometerjerkstandarddeviationz
* timebodygyroscopemeanx
* timebodygyroscopemeany
* timebodygyroscopemeanz
* timebodygyroscopestandarddeviationx
* timebodygyroscopestandarddeviationy
* timebodygyroscopestandarddeviationz
* timebodygyroscopejerkmeanx
* timebodygyroscopejerkmeany
* timebodygyroscopejerkmeanz
* timebodygyroscopejerkstandarddeviationx
* timebodygyroscopejerkstandarddeviationy
* timebodygyroscopejerkstandarddeviationz
* timebodyaccelerometermagnitudemean
* timebodyaccelerometermagnitudestandarddeviation
* timegravityaccelerometermagnitudemean
* timegravityaccelerometermagnitudestandarddeviation
* timebodyaccelerometerjerkmagnitudemean
* timebodyaccelerometerjerkmagnitudestandarddeviation
* timebodygyroscopemagnitudemean
* timebodygyroscopemagnitudestandarddeviation
* timebodygyroscopejerkmagnitudemean
* timebodygyroscopejerkmagnitudestandarddeviation
* frequencybodyaccelerometermeanx
* frequencybodyaccelerometermeany
* frequencybodyaccelerometermeanz
* frequencybodyaccelerometerstandarddeviationx
* frequencybodyaccelerometerstandarddeviationy
* frequencybodyaccelerometerstandarddeviationz
* frequencybodyaccelerometerjerkmeanx
* frequencybodyaccelerometerjerkmeany
* frequencybodyaccelerometerjerkmeanz
* frequencybodyaccelerometerjerkstandarddeviationx
* frequencybodyaccelerometerjerkstandarddeviationy
* frequencybodyaccelerometerjerkstandarddeviationz
* frequencybodygyroscopemeanx
* frequencybodygyroscopemeany
* frequencybodygyroscopemeanz
* frequencybodygyroscopestandarddeviationx
* frequencybodygyroscopestandarddeviationy
* frequencybodygyroscopestandarddeviationz
* frequencybodyaccelerometermagnitudemean
* frequencybodyaccelerometermagnitudestandarddeviation
* frequencybodyaccelerometerjerkmagnitudemean
* frequencybodyaccelerometerjerkmagnitudestandarddeviation
* frequencybodygyroscopemagnitudemean
* frequencybodygyroscopemagnitudestandarddeviation
* frequencybodygyroscopejerkmagnitudemean
* frequencybodygyroscopejerkmagnitudestandarddeviation

### Additional Information

For more information about the data please visit the <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">Human Activity Recognition Using Smartphones Data Set</a> website.

To understand the run_analysis.R script in more detail, please read the README.md file in the repository.
