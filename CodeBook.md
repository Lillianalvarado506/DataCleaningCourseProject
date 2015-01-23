#Course Project CodeBook
 This is the codebook for the project required by the course "Getting and Cleaning Data" by Jeffrey Leek.
 
#Data Source
The data was downloaded from the following URL:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A description of the data can be found in:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

#Variables
 
There were 30 individual subjects in the test. They are represented by the arbitrary values of numbers one through thirty as identifying indicators (subject ids).

Accelerometer and gyroscope readings were analyzed for six types of activities:

walking
walking_upstairs
walking_downstairs
sitting
standing
laying
The means and standard deviations for 66 measures have been averaged over time for each test subject. Specifically,my handling of the original data resulted in only collecting the measures of mean() and std() for each measure and required the measure have both. Some measures that included the term mean were not included here as a result because the derived data set described here is only dealing with the means and accompanying standard deviations of the assessements of the measures.

There are no units for these measures as they are in fact ratios derived by dividing by their range to normalize the data. 
 
 [1] "subject"                                      
 [2] "activity"                                     
 [3] "timeBodyAccelerometerMeanX"   : mean acceleration of the body in x-axis                
 [4] "timeBodyAccelerometerMeanY"   : mean acceleration of the body in y-axis                
 [5] "timeBodyAccelerometerMeanZ"   : mean acceleration of the body in z-axis              
 [6] "timeBodyAccelerometerStdDevX" : std deviation of acceleration of the body in x-axis              
 [7] "timeBodyAccelerometerStdDevY" : std deviation of acceleration of the body in y-axis of the phone                
 [8] "timeBodyAccelerometerStdDevZ" : std deviation of acceleration of the body in z-axis of the phone                
 [9] "timeGravityAccelerometerMeanX": mean acceleration of gravity in x-axis of the phone               
[10] "timeGravityAccelerometerMeanY": mean acceleration of gravity in y-axis of the phone                
[11] "timeGravityAccelerometerMeanZ": mean acceleration of gravity in z-axis of the phone               
[12] "timeGravityAccelerometerStdDevX"  : std deviation of acceleration of gravity in x-axis of the phone            
[13] "timeGravityAccelerometerStdDevY"  : std deviation of acceleration of gravity in y-axis of the phone           
[14] "timeGravityAccelerometerStdDevZ"  : std deviation of acceleration of gravity in z-axis of the phone            
[15] "timeBodyAccelerometerJerkMeanX"   : mean frequency domain signals of the acceleration of the body in x-axis of the phone            
[16] "timeBodyAccelerometerJerkMeanY"   : mean frequency domain signals of the acceleration of the body in y-axis of the phone            
[17] "timeBodyAccelerometerJerkMeanZ"   : mean frequency domain signals of the acceleration of the body in z-axis of the phone            
[18] "timeBodyAccelerometerJerkStdDevX" : std deviation of acceleration during jerk signals of body in x-axis of the phone            
[19] "timeBodyAccelerometerJerkStdDevY" : std deviation of acceleration during jerk signals of body in y-axis of the phone            
[20] "timeBodyAccelerometerJerkStdDevZ" : std deviation of acceleration during jerk signals of body in z-axis of the phone            
[21] "timeBodyGyroscopeMeanX"           : mean angular velocity of the body in x-axis of the phone            
[22] "timeBodyGyroscopeMeanY"           : mean angular velocity of the body in y-axis of the phone            
[23] "timeBodyGyroscopeMeanZ"           : mean angular velocity of the body in z-axis of the phone            
[24] "timeBodyGyroscopeStdDevX"         : std deviation of angular velocity of the body in x-axis of the phone            
[25] "timeBodyGyroscopeStdDevY"         : std deviation of angular velocity of the body in y-axis of the phone            
[26] "timeBodyGyroscopeStdDevZ"         : std deviation of angular velocity of the body in z-axis of the phone            
[27] "timeBodyGyroscopeJerkMeanX"       : mean angular velocity during jerk signals of the body in x-axis of the phone           
[28] "timeBodyGyroscopeJerkMeanY"       : mean angular velocity during jerk signals of the body in y-axis of the phone            
[29] "timeBodyGyroscopeJerkMeanZ"       : mean angular velocity during jerk signals of the body in z-axis of the phone            
[30] "timeBodyGyroscopeJerkStdDevX"     : std deviation of angular velocity during jerk signals of body in x-axis of the phone            
[31] "timeBodyGyroscopeJerkStdDevY"     : std deviation of angular velocity during jerk signals of body in y-axis of the phone            
[32] "timeBodyGyroscopeJerkStdDevZ"     : std deviation of angular velocity during jerk signals of body in z-axis of the phone            
[33] "timeBodyAccelerometerMagnitudeMean"       : mean magnitude of the acceleration of the body         
[34] "timeBodyAccelerometerMagnitudeStdDev"     : std deviation of the magnitude of the acceleration of the body       
[35] "timeGravityAccelerometerMagnitudeMean"    : mean magnitude of the acceleration of gravity      
[36] "timeGravityAccelerometerMagnitudeStdDev"  : std deviation of the magnitude of the acceleration of gravity     
[37] "timeBodyAccelerometerJerkMagnitudeMean"   : mean magnitude of the acceleration of the body during jerk signals    
[38] "timeBodyAccelerometerJerkMagnitudeStdDev" : std deviation of the magnitude of the acceleration of the body during jerk signals 
[39] "timeBodyGyroscopeMagnitudeMean"   :  mean magnitude of the angular velocity of the body         
[40] "timeBodyGyroscopeMagnitudeStdDev" :  std deviation of the magnitude of the angular velocity of the body         
[41] "timeBodyGyroscopeJerkMagnitudeMean" : mean magnitude of the angular velocity of the body during jerk signals        
[42] "timeBodyGyroscopeJerkMagnitudeStdDev" :  std deviation of the magnitude of the angular velocity of the body during jerk signals       
[43] "frequencyBodyAccelerometerMeanX"   : mean frequency domain signals of the acceleration of the body in x-axis of the phone            
[44] "frequencyBodyAccelerometerMeanY"   : mean frequency domain signals of the acceleration of the body in y-axis of the phone           
[45] "frequencyBodyAccelerometerMeanZ"   : mean frequency domain signals of the acceleration of the body in z-axis of the phone           
[46] "frequencyBodyAccelerometerStdDevX" : std deviation of the frequency domain signals of acceleration of the body in x-axis of the phone           
[47] "frequencyBodyAccelerometerStdDevY" : std deviation of the frequency domain signals of acceleration of the body in y-axis of the phone           
[48] "frequencyBodyAccelerometerStdDevZ" : std deviation of the frequency domain signals of acceleration of the body in z-axis of the phone           
[49] "frequencyBodyAccelerometerJerkMeanX"  : mean frequency domain signals during jerk signals for the acceleration of the body in x-axis of the phone        
[50] "frequencyBodyAccelerometerJerkMeanY" : mean frequency domain signals during jerk signals for the acceleration of the body in y-axis of the phone         
[51] "frequencyBodyAccelerometerJerkMeanZ"  : mean frequency domain signals during jerk signals for the acceleration of the body in z-axis of the phone        
[52] "frequencyBodyAccelerometerJerkStdDevX" : std deviation of the frequency domain signals during jerk signals for the acceleration of the body in x-axis of the phone       
[53] "frequencyBodyAccelerometerJerkStdDevY" : std deviation of the frequency domain signals during jerk signals for the acceleration of the body in y-axis of the phone       
[54] "frequencyBodyAccelerometerJerkStdDevZ" : std deviation of the frequency domain signals during jerk signals for the acceleration of the body in z-axis of the phone       
[55] "frequencyBodyGyroscopeMeanX"   : mean frequency domain signals angular velocity of the body in x-axis of the phone               
[56] "frequencyBodyGyroscopeMeanY"   : mean frequency domain signals angular velocity of the body in y-axis of the phone               
[57] "frequencyBodyGyroscopeMeanZ"    : mean frequency domain signals angular velocity of the body in z-axis of the phone              
[58] "frequencyBodyGyroscopeStdDevX"  : std deviation of the frequency domain signals of angular velocity of the body in x-axis of the phone              
[59] "frequencyBodyGyroscopeStdDevY"  : std deviation of the frequency domain signals of angular velocity of the body in y-axis of the phone              
[60] "frequencyBodyGyroscopeStdDevZ"  : std deviation of the frequency domain signals of angular velocity of the body in z-axis of the phone              
[61] "frequencyBodyAccelerometerMagnitudeMean"     : mean magnitude of the frequency domain signals of the acceleration of the body 
[62] "frequencyBodyAccelerometerMagnitudeStdDev"   : std deviation of the frequency domain signals of the magnitude of the acceleration of the body 
[63] "frequencyBodyAccelerometerJerkMagnitudeMean" : mean magnitude of the frequency domain signals of the maganitude of acceleration of the body during jerk signals 
[64] "frequencyBodyAccelerometerJerkMagnitudeStdDev": std deviation of the frequency domain signals of the magnitude of the acceleration of the body during jerk signals
[65] "frequencyBodyGyroscopeMagnitudeMean"      : mean magnitude of the frequency domain signals of the angular velocity of the body    
[66] "frequencyBodyGyroscopeMagnitudeStdDev"    : std deviation of the frequency domain signals of the magnitude of the angular velocity of the body    
[67] "frequencyBodyGyroscopeJerkMagnitudeMean"  : mean magnitude of the frequency domain signals of the angular velocity of the body during jerk signals    
[68] "frequencyBodyGyroscopeJerkMagnitudeStdDev" : std deviation of the frequency domain signals of the magnitude of the angular velocity of the body during jerk signals














































