# Code Book
This code book provides a summary of the variables for the tidyMeans dataset and their units of measurement.

## Identifiers
These variables identify the unique subject and activity each of the measurements relate.

	* Subject: the subject ID as an integer
	* Activity: the activity name as a string:
		+ Walking
		+ Walking Upstairs
		+ Walking Downstairs
		+ Sitting
		+ Standing
		+ Laying

## Measurements
All variables are the mean value of the corresponding measurement for each subject and each activity. Values are floating point numbers.

Where a variable starts with "Time" or "Frequency" that variable captures the time and frequency respectively of the measurement.
Where a variable contains "Mean" or "StdDev" that variable is the mean or standard deviation of the measurement respectively.

	* TimeBodyAccMeanX
	* TimeBodyAccMeanY
	* TimeBodyAccMeanZ
	* TimeBodyAccStdDevX
	* TimeBodyAccStdDevY
	* TimeBodyAccStdDevZ
	* TimeGravityAccMeanX
	* TimeGravityAccMeanY
	* TimeGravityAccMeanZ
	* TimeGravityAccStdDevX
	* TimeGravityAccStdDevY
	* TimeGravityAccStdDevZ
	* TimeBodyAccJerkMeanX
	* TimeBodyAccJerkMeanY
	* TimeBodyAccJerkMeanZ
	* TimeBodyAccJerkStdDevX
	* TimeBodyAccJerkStdDevY
	* TimeBodyAccJerkStdDevZ
	* TimeBodyGyroMeanX
	* TimeBodyGyroMeanY
	* TimeBodyGyroMeanZ
	* TimeBodyGyroStdDevX
	* TimeBodyGyroStdDevY
	* TimeBodyGyroStdDevZ
	* TimeBodyGyroJerkMeanX
	* TimeBodyGyroJerkMeanY
	* TimeBodyGyroJerkMeanZ
	* TimeBodyGyroJerkStdDevX
	* TimeBodyGyroJerkStdDevY
	* TimeBodyGyroJerkStdDevZ
	* TimeBodyAccMagMean
	* TimeBodyAccMagStdDev
	* TimeGravityAccMagMean
	* TimeGravityAccMagStdDev
	* TimeBodyAccJerkMagMean
	* TimeBodyAccJerkMagStdDev
	* TimeBodyGyroMagMean
	* TimeBodyGyroMagStdDev
	* TimeBodyGyroJerkMagMean
	* TimeBodyGyroJerkMagStdDev
	* FrequencyBodyAccMeanX
	* FrequencyBodyAccMeanY
	* FrequencyBodyAccMeanZ
	* FrequencyBodyAccStdDevX
	* FrequencyBodyAccStdDevY
	* FrequencyBodyAccStdDevZ
	* FrequencyBodyAccMeanFreqX
	* FrequencyBodyAccMeanFreqY
	* FrequencyBodyAccMeanFreqZ
	* FrequencyBodyAccJerkMeanX
	* FrequencyBodyAccJerkMeanY
	* FrequencyBodyAccJerkMeanZ
	* FrequencyBodyAccJerkStdDevX
	* FrequencyBodyAccJerkStdDevY
	* FrequencyBodyAccJerkStdDevZ
	* FrequencyBodyAccJerkMeanFreqX
	* FrequencyBodyAccJerkMeanFreqY
	* FrequencyBodyAccJerkMeanFreqZ
	* FrequencyBodyGyroMeanX
	* FrequencyBodyGyroMeanY
	* FrequencyBodyGyroMeanZ
	* FrequencyBodyGyroStdDevX
	* FrequencyBodyGyroStdDevY
	* FrequencyBodyGyroStdDevZ
	* FrequencyBodyGyroMeanFreqX
	* FrequencyBodyGyroMeanFreqY
	* FrequencyBodyGyroMeanFreqZ
	* FrequencyBodyAccMagMean
	* FrequencyBodyAccMagStdDev
	* FrequencyBodyAccMagMeanFreq
	* FrequencyBodyAccJerkMagMean
	* FrequencyBodyAccJerkMagStdDev
	* FrequencyBodyAccJerkMagMeanFreq
	* FrequencyBodyGyroMagMean
	* FrequencyBodyGyroMagStdDev
	* FrequencyBodyGyroMagMeanFreq
	* FrequencyBodyGyroJerkMagMean
	* FrequencyBodyGyroJerkMagStdDev
	* FrequencyBodyGyroJerkMagMeanFreq
