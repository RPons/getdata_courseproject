### Code book

This code book details the contents of the dataset.txt. 
Complementary details about the calculation methods for each variable can be found in the codebooks already existent in the original UCI HAR Dataset.

The data set contains the average of each variable for each activity (column 1) and each subject (column 2).
Notes: 
- The data set is sorted by activity and then by subject.
- Time domain signals have a prefix 't' to denote time. The word "time" could make the name more descriptive but a little bit longer. 't' is normally used for time domain signals nad should be easy to understand.
- Frequency domain signals have a prefix 'f' to denote frequency. Same comment as above concerning the "frequency" word.
- 'Std' means Standard Deviation. It was not extended because it is largely used in that form
- 'Mag' means Magnitude and is calculated using the Euclidean norm of the three-dimensional signals X, Y and Z  
- 'Gyro' means angular velocity in radians/second measured with the Gyroscope. It could be changed to "angular velocity" to be more descriptive but the sensor origin is lost. I decided to put the 'Gyro' keywork in the name and the details are explained in this codebook.
- 'Jerk' signals are obtain deriving acceleration and angular velocity, giving the rate of change of each measurement. The time derivative of acceleration, often called a 'jerk', plays an important role in vibration control, ride comfort evaluation and so on.
- The units of signals in the frequency domain are quantity squared rms, where the quantity is the unit in the time-domain signal.




## Column description
- activity
This column conatins the activity name with a descriptive name. The names of the activities have been extracted from the activity_labels.txt
	
- subjectid
This column contains the subjectid
	
- tBodyAccelerationMeanX
Average of the mean Body acceleration signal for X in "g" units
	
- tBodyAccelerationMeanY      
Average of the mean Body acceleration signal for Y in "g" units
	
- tBodyAccelerationMeanZ
Average of the mean Body acceleration signal for Z in "g" units
	
- tBodyAccelerationStdX
Average of the std Body acceleration signal for X in "g" units 
	
-tBodyAccelerationStdY
Average of the std Body acceleration signal for Y in "g" units
	
- tBodyAccelerationStdZ
Average of the std Body acceleration signal for Z in "g" units 
	
- tGravityAccelerationMeanX
Average of the mean Gravity acceleration signal for X in "g" units
	
- tGravityAccelerationMeanY
Average of the mean Gravity acceleration signal for Y in "g" units
	
- tGravityAccelerationMeanZ
Average of the mean Gravity acceleration signal for Z in "g" units
	
- tGravityAccelerationStdX
Average of the std Gravity acceleration signal for X in "g" units 
	
- tGravityAccelerationStdY
Average of the std Gravity acceleration signal for Y in "g" units
	
- tGravityAccelerationStdZ
Average of the std Gravity acceleration signal for Z in "g" units 
	
- tBodyAccelerationJerkMeanX
Average of the mean Jerk Body Acceleration signal for X in m/s^3 units (note: Jerk = rate of change of acceleration -> m/s^2/s)
	
- tBodyAccelerationJerkMeanY
Average of the mean Jerk Body Acceleration signal for Y in m/s^3 units 
	
- tBodyAccelerationJerkMeanZ
Average of the mean Jerk Body Acceleration signal for Z in m/s^3 units
	
- tBodyAccelerationJerkStdX
Average of the std Jerk Body Acceleration signal for X in m/s^3 units
	
- tBodyAccelerationJerkStdY
Average of the std Jerk Body Acceleration signal for Y in m/s^3 units
	
- tBodyAccelerationJerkStdZ
Average of the std Jerk Body Acceleration signal for Z in m/s^3 units 
	
- tBodyGyroMeanX
Average of mean gyroscope angular velocity for X in radians/second units
	
- tBodyGyroMeanY 
Average of mean gyroscope angular velocity for Y in radians/second units
	
- tBodyGyroMeanZ
Average of mean gyroscope angular velocity for Z in radians/second units 
	
- tBodyGyroStdX
Average of std gyroscope angular velocity for X in radians/second units 
	
- tBodyGyroStdY
Average of std gyroscope angular velocity for Y in radians/second units 
	
- tBodyGyroStdZ
Average of std gyroscope angular velocity for Z in radians/second units 
	
- tBodyGyroJerkMeanX
Average of mean gyroscope angular velocity Jerk for X in radians/s^2 units (note: jerk = rate of variation radians/s/s)
	
- tBodyGyroJerkMeanY
Average of mean gyroscope angular velocity Jerk for Y in rradians/s^2 units
	
- tBodyGyroJerkMeanZ                       
Average of mean gyroscope angular velocity Jerk for Z in radians/s^2 units
	
- tBodyGyroJerkStdX
Average of std gyroscope angular velocity Jerk for X in radians/s^2 units 
	
- tBodyGyroJerkStdY                        
Average of std gyroscope angular velocity Jerk for Y in radians/s^2 units
	
- tBodyGyroJerkStdZ                        
Average of std gyroscope angular velocity Jerk for Z in radians/s^2 units
	
- tBodyAccelerationMagMean 
Average of the mean Body Acceleration Magnitude in "g" units 
	 
- tBodyAccelerationMagStd  
Average of the std Body Acceleration Magnitude in "g" units 
	 
- tGravityAccelerationMagMean
Average of the mean Gravity Acceleration Magnitude in "g" units
	 
- tGravityAccelerationMagStd
Average of the std Gravity Acceleration Magnitude  in "g" units
	 
- tBodyAccelerationJerkMagMean
Average of the mean Body Acceleration Jerk Magnitude in m/s^3 units    
	 
- tBodyAccelerationJerkMagStd
Average of the std Body Acceleration Jerk Magnitude  in m/s^3 units
	 
- tBodyGyroMagMean
Average of mean gyroscope angular velocity magnitude radians/second units 
	 
- tBodyGyroMagStd
Average of std gyroscope angular velocity magnitude radians/second units  
	 
- tBodyGyroJerkMagMean
Average of mean gyroscope angular velocity magnitude radians/second units 
	 
- tBodyGyroJerkMagStd
Average of std gyroscope angular velocity magnitude radians/second units 
	 
- fBodyAccelerationMeanX 
Average of mean Body acceleration FFT signal for X 
	 
- fBodyAccelerationMeanY
Average of mean Body acceleration FFT signal for Y 
	 
- fBodyAccelerationMeanZ
Average of mean Body acceleration FFT signal for Z 
	 
- fBodyAccelerationStdX
Average of std Body acceleration FFT signal for X 
	 
- fBodyAccelerationStdY
Average of std Body acceleration FFT signal for Y
	 
- fBodyAccelerationStdZ
Average of std Body acceleration FFT signal for Z
	 
- fBodyAccelerationMeanFrequencyX  
Average of Body acceleration Mean Frequency for X (obtained from FFT signal)
	 
- fBodyAccelerationMeanFrequencyY
Average of Body acceleration Mean Frequency for Y (obtained from FFT signal)  
	 
- fBodyAccelerationMeanFrequencyZ
Average of Body acceleration Mean Frequency for Z (obtained from FFT signal)  
	 
- fBodyAccelerationJerkMeanX
Average of std Jerk Body acceleration FFT signal for X 
	 
- fBodyAccelerationJerkMeanY
Average of std Jerk Body acceleration FFT signal for Y 
	 
- fBodyAccelerationJerkMeanZ
Average of std Jerk Body acceleration FFT signal for Z
	 
- fBodyAccelerationJerkStdX
Average of std Jerk Body acceleration FFT signal for X
	 
- fBodyAccelerationJerkStdY
Average of std Jerk Body acceleration FFT signal for Y 
	 
- fBodyAccelerationJerkStdZ
Average of std Jerk Body acceleration FFT signal for Z
	 
- fBodyAccelerationJerkMeanFrequencyX
Average of Jerk Body acceleration Mean Frequency for X (obtained from FFT signal)
	 
- fBodyAccelerationJerkMeanFrequencyY
Average of Jerk Body acceleration Mean Frequency for Y (obtained from FFT signal)
	 
- fBodyAccelerationJerkMeanFrequencyZ
Average of Jerk Body acceleration Mean Frequency for Z (obtained from FFT signal) 
	 
- fBodyGyroMeanX 
Average of mean gyroscope angular velocity FFT signal for X
	 
- fBodyGyroMeanY 
Average of mean gyroscope angular velocity FFT signal for Y 
	 
- fBodyGyroMeanZ
Average of mean gyroscope angular velocity FFT signal for Z
	 
- fBodyGyroStdX
Average of std gyroscope angular velocity FFT signal for X
	 
- fBodyGyroStdY   
Average of std gyroscope angular velocity FFT signal for Y 
	 
- fBodyGyroStdZ
Average of std gyroscope angular velocity FFT signal for Z
	 
- fBodyGyroMeanFrequencyX
Average of gyroscope angular velocity Mean Frequency for X (obtained from FFT signal)
	 
- fBodyGyroMeanFrequencyY 
Average of gyroscope angular velocity Mean Frequency for Y (obtained from FFT signal) 
	 
- fBodyGyroMeanFrequencyZ
Average of gyroscope angular velocity Mean Frequency for Z (obtained from FFT signal) 
	 
- fBodyAccelerationMagMean
Average of the mean Body Acceleration Magnitude FFT signal 
	 
- fBodyAccelerationMagStd
Average of the std Body Acceleration Magnitude FFT signal
	 
- fBodyAccelerationMagMeanFrequency
Average of the Body Acceleration mean frequency Magnitude FFT signal 
	 
- fBodyBodyAccelerationJerkMagMean
Average of the mean Jerk Body Acceleration Magnitude FFT signal      
	 
- fBodyAccelerationJerkMagStd
Average of the std Jerk Body Acceleration Magnitude FFT signal       
	 
- fBodyAccelerationJerkMagMeanFrequency
Average of the Jerk Body Acceleration mean frequency Magnitude FFT signal 
	 
- fBodyGyroMagMean
Average of mean gyroscope angular velocity magnitude FFT signal 
	 
- fBodyGyroMagStd
Average of std gyroscope angular velocity magnitude FFT signal 
	 
- fBodyGyroMagMeanFrequency
Average of mean gyroscope angular velocity frequency    
	 
- fBodyGyroJerkMagMean
Average of mean Jerk gyroscope angular velocity magnitude FFT signal 
	 
- fBodyGyroJerkMagStd
Average of std Jerk gyroscope angular velocity magnitude FFT signal 
	 
- fBodyBodyGyroJerkMagMeanFrequency
Average of mean Jerk gyroscope angular velocity frequency 
