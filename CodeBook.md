## Descrption of the Experiments
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

## Descrption of the transformations performed to clean up the data
1 Merging of the training and the test sets to create one data set.
2 Extracting only the measurements on the mean and standard deviation for each measurement.
3 Using descriptive activity names to name the activities in the data set
4 Naming appropriately labels the data set with descriptive variable names.
5 Ceating a second Final tidy data set with the average of each variable for each activity and each subject.

## Description of the variables in the tidy data set

| Variable | Description
-----------|-------------
| activity | The activity performed (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING)
| subject | Subject ID
| TimeBodyAccelerometerMean()- ... | Mean time for acceleration of body (either for axis X,Y or Z)
| TimeBodyAccelerometerSTD()-... | Standard deviation of time for acceleration of body (either for axis direction X,Y or Z) 
| TimeGravityAccelerometerMean()- ... |  Mean time of acceleration of gravity (either for axis direction X,Y or Z)
| TimeGravityAccelerometerSTD() ... | Standard deviation of time of acceleration of gravity (either for axis direction X,Y or Z)
| TimeBodyAccelerometerJerkMean()- ...|  Mean time of body acceleration jerk (either for axis direction X,Y or Z)
| TimeBodyAccelerometerJerkSTD()- ... | Standard deviation of time of body acceleration jerk (either for axis direction X,Y or Z)
| TimeBodyGyroscopeMean()- ... | Mean body gyroscope measurement  (either for axis direction X,Y or Z)
| TimeBodyGyroscopeSTD()- ... |  Standard deviation of body gyroscope measurement (either for axis direction X,Y or Z)
| TimeBodyGyroscopeJerkMean()- ... | Mean jerk signal of body (either for axis direction X,Y or Z)
| TimeBodyGyroscopeJerkSTD()- ... | Standard deviation of jerk signal of body (either for axis direction X,Y or Z)
| TimeBodyAccelerometerMagnitudeMean() |  Mean magnitude of body Accelerometer (either for axis direction X,Y or Z)
| TimeBodyAccelerometerMagnitudeSTD() | Standard deviation of magnitude of body Acc 
| TimeGravityAccelerometerMagnitudeMean() | Mean gravity acceleration magnitude
| TimeGravityAccelerometerMagnitudeSTD() | Standard deviation of gravity acceleration magnitude
| TimeBodyAccelerometerJerkMagnitudeMean() |  Mean magnitude of body acceleration jerk
| TimeBodyAccelerometerJerkMagnitudeSTD() | Standard deviation of magnitude of body acceleration jerk
| TimeBodyGyroscopeMagnitudeMean() |  Mean magnitude of body gyroscope measurement
| TimeBodyGyroscopeMagnitudeSTD() | Standard deviation of magnitude of body gyroscope measurement
| TimeBodyGyroscopeJerkMagnitudeMean() | Mean magnitude of body body gyroscope jerk measurement
| TimeBodyGyroscopeJerkMagnitudeSTD() | Standard deviation of magnitude of body body gyroscope jerk measurement
| FrequencyBodyAccelerometerMean()- ... |  Mean frequency of body acceleration (either for axis direction X,Y or Z)
| FrequencyBodyAccelerometerSTD()- ... | Standard deviation of frequency of body  acceleration (either for axis direction X,Y or Z)
| FrequencyBodyAccelerometerMeanFreq()- ... | Mean frequency of body accerlation jerk (either for axis direction X,Y or Z)
| FrequencyBodyAccelerometerJerkMean()- ... | Standard deviation frequency of body accerlation jerk (either for axis direction X,Y or Z)
| FrequencyBodyAccelerometerJerkSTD()- ... | Mean frequency of body gyroscope measurement (either for axis direction X,Y or Z)
| FrequencyBodyAccelerometerJerkMeanFreq()- ... | Standard deviation frequency of body gyroscope measurement (either for axis direction X,Y or Z)
| FrequencyBodyGyroscopeMean() ... | Mean frequency of body gyroscope measurement (either for axis direction X,Y or Z)
| FrequencyBodyGyroscopeSTD()- ... | Standard deviation frequency of body gyroscope measurement (either for axis direction X,Y or Z)
| FrequencyBodyGyroscopeMeanFreq()- ... | Mean frequency of body acceleration magnitude (either for axis direction X,Y or Z)
| FrequencyBodyGyroscopeMagnitudeMean() | Mean frequency of body gyroscope measurement
| FrequencyBodyGyroscopeMagnitudeSTD() ... | Standard deviation frequency of body gyroscope measurement (either for axis direction X,Y or Z)
| FrequencyBodyGyroscopeJerkMagnitudeMean | Mean frequency of magnitude of body gyroscope jerk measurement
| FrequencyBodyGyroscopeJerkMagnitudeSTD() | Standard deviation frequency of magnitude of body gyroscope jerk measurement
 

