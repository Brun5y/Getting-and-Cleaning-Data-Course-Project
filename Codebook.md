## Codebook for the Variables in:
### Getting and Clean ing Data - Course Project

The following is a list of the names of all of the variables in my submitted dataset along with a short discription of what each of them actually measures.  The first column columns were simply titled Subjects and Activicty Labels. I essentially used the feature names for each  of the following columns, but I editted then to make them a little more descriptive.  I took out the all of the dashes between words.  Also removed the parenthesis from each title name. I capatilized the start of each new word and left one space between each word, I understand that this last step contradicts certain instructions from the lecture about acceptable title headings, but I did it simply to make my title headings more readable.  I lengthened the words Mag, Acc and Gyro to Magnitude, Accelerometer and Gyroscope, respectively.  The word mean was rewritten as Mean; and the words std and sd were rewritten as Standard Deviation.  Finally I removed t headings from all the files that had them and I replaced the f headings with the name FTT ( the only abbreviation in my headings that stands for Fast Fourier Transform).  I did this because, the observations in the time domain are simply the observations taken from the instruments.  The observations in the frequency domain were simply the observations from the time domain (the actual observations) that had been run through a fast fourier transform algorithm.  I find these labels more descriptive because they explained whether the original data (data from the time domain) had been transformed to an observation from the frequency domain or not. In my opinion the summary statistics of the orignal data did not need a header, but the the transformed data did. 

 * [1] "Subjects"- a numeric indicator (1:30) that tells which subject the particular row of observations is refering to.                                               

 * [2] "Activity Labels" - a character indicator explains which type of activity each row refers to.  For example: Walking, walking upstairs, walking downstairs, standing, sitting, laying
 
Before I continue with my list of variable names I want to put in this short aside.  In the raw test and train data (X test.txt and X train.txt not inertial signals) each observation is actually a summary statistic (mean, standard deviation, mean absolute deviation, min, max, ect.) for a 2.56 sec intervals where 128 observations were recorded by either a gyroscope or an accelerometer (Yes, acc stood for accelerometer and not acceleration. It says so on the first line of the features info.txt file.). So x test.txt[1,1] is actually the mean of all 128 observations by the accelerometer of the accelerations in the x direction that were recorded in the first 2.56 seconds.  And so the final table is actually an array of means for those summary statistics for a given subject doing a given activity. Note that because the data was normalized, none of these columns have units. 

The magnitudes of the net values were calculated from the square roots of the sums of the squares in the x, y and z directions.  The jerks were calculated from the derivatives of the acceleration and angular velocity data. The Fast Fourier Transforms converted data from the time to the frequency domain.


 * [3] "Body Accelerometer Mean X" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration in the x direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.
 
 * [4] "Body Accelerometer Mean Y" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration in the y direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.                               
 
 * [5] "Body Accelerometer Mean Z" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration in the z direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.                            
 
 * [6] "Body Accelerometer Standard Deviation X" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration in the x direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.               
 
 * [7] "Body Accelerometer Standard Deviation Y" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration in the y direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.               
 
 * [8] "Body Accelerometer Standard Deviation Z" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration in the z direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.   
 
 * [9] "Gravity Accelerometer Mean X" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration due to gravity in the x direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.
 
 
 * [10] "Gravity Accelerometer Mean Y" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration due to gravity in the y direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.
 
 * [11] "Gravity Accelerometer Mean Z" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration due to gravity in the z direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table .
 
 * [12] "Gravity Accelerometer Standard Deviation X" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration due to gravity in the x direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.  
 
 * [13] "Gravity Accelerometer Standard Deviation Y" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration due to gravity in the y direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.
 
 * [14] "Gravity Accelerometer Standard Deviation Z - a numeric observation where:
 
 ** In every 2.56 second interval the accleration due to gravity in the z direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.
 
 * [15] "Body Accelerometer Jerk Mean X" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk in the x direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table. 
 
 * [16] "Body Accelerometer Jerk Mean Y" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk in the y direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.   
 
 * [17] "Body Accelerometer Jerk Mean Z" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk in the z direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.   
 
 * [18] "Body Accelerometer Jerk Standard Deviation X" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk in the x direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.    
 
 * [19] "Body Accelerometer Jerk Standard Deviation Y" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk in the x direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.           
 
 * [20] "Body Accelerometer Jerk Standard Deviation Z" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk in the x direction was recorded by the accelerometer 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table. 
 
 * [21] "Body Gyroscope Mean X" - a numeric observation where:
 
 ** In every 2.56 second interval the angular velocity about the x-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.  
 
 * [22] "Body Gyroscope Mean Y" - a numeric observation where:
 
 ** In every 2.56 second interval the angular velocity about y-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.
 
 * [23] "Body Gyroscope Mean Z" - a numeric observation where:
 
 ** In every 2.56 second interval the angular velocity about z-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table. 
 
 * [24] "Body Gyroscope Standard Deviation X" - a numeric observation where:
 
 ** In every 2.56 second interval the angular velocity about x-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.
 
 * [25] "Body Gyroscope Standard Deviation Y" - a numeric observation where:
 
 ** In every 2.56 second interval the angular velocity about y-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table. 
 
 * [26] "Body Gyroscope Standard Deviation Z" - a numeric observation where:
 
 ** In every 2.56 second interval the angular velocity about y-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity. 
 ** This was the data that was passed to us in the train/test files.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.
 
 * [27] "Body Gyroscope Jerk Mean X" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk for the rotation about x-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.    
 
 * [28] "Body Gyroscope Jerk Mean Y" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk for the rotation about y-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table. 
 
 * [29] "Body Gyroscope Jerk Mean Z" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk for the rotation about z-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.  
 
 * [30] "Body Gyroscope Jerk Standard Deviation X" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk for the rotation about x-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.  
 
 * [31] "Body Gyroscope Jerk Standard Deviation Y" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk for the rotation about y-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.   
 
 * [32] "Body Gyroscope Jerk Standard Deviation Z" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk for the rotation about z-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.  
 
 * [33] "Body Accelerometer Magnitude Mean" - a numeric observation where:
 
 ** In every 2.56 second interval the  magitude of the net accleration was calculated from the accelerometer data 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.
 
 * [34] "Body Accelerometer Magnitude Standard Deviation" - a numeric observation where:
 
 ** In every 2.56 second interval the  magitude of the net accleration was calculated from the accelerometer data 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.   
 
 * [35] "Gravity Accelerometer Magnitude Mean" - a numeric observation where:
 
 ** In every 2.56 second interval the  magitude of the net accleration due to gravity was calculated from the accelerometer data 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.
 
 * [36] "Gravity Accelerometer Magnitude Standard Deviation" - a numeric observation where:
 
 ** In every 2.56 second interval the  magitude of the net accleration due to gravity was calculated from the accelerometer data 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table. 
 
 * [37] "Body Accelerometer Jerk Magnitude Mean" - a numeric observation where:
 
 ** In every 2.56 second interval the  magitude of the jerk was calculated from the accelerometer data 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.
 
 
 * [38] "Body Accelerometer Jerk Magnitude Standard Deviation" - a numeric observation where:
 
 ** In every 2.56 second interval the  magitude of the jerk was calculated by from the accelerometer data 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.   
 
 * [39] "Body Gyroscope Magnitude Mean" - a numeric observation where:
 
 ** In every 2.56 second interval the net magnitude of the angular velocity was calculated from the gyroscope data 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.  
 
 * [40] "Body Gyroscope Magnitude Standard Deviation" - a numeric observation where:
 
 ** In every 2.56 second interval the net magnitude of the angular velocity was calculated from the gyroscope data 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.
 
 * [41] "Body Gyroscope Jerk Magnitude Mean" - a numeric observation where:
 
 ** In every 2.56 second interval the net magnitude of the angular velocity was calculated from the gyroscope data 128 times for the given subject participating in the given activity. 
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.   
 
 * [42] "Body Gyroscope Jerk Magnitude Standard Deviation" - a numeric observation where:
 
 ** In every 2.56 second interval the net magnitude of the jerk was calculated from the gyroscope data 128 times for the given subject participating in the given activity. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table 
 
 * [43] "FFT Body Accelerometer Mean X" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration in the x direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.   
 
 * [44] "FFT Body Accelerometer Mean Y" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration in the y direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.   
  
 
 * [45] "FFT Body Accelerometer Mean Z" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration in the z direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.   
    
 
 * [46] "FFT Body Accelerometer Standard Deviation X" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration in the x direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval stand deviations was then calculated, which is the value seen for this observation in my final summary table.  
 
 * [47] "FFT Body Accelerometer Standard Deviation Y" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration in the y direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval stand deviations was then calculated, which is the value seen for this observation in my final summary table.  
 
 * [48] "FFT Body Accelerometer Standard Deviation Z" - a numeric observation where:
 
 ** In every 2.56 second interval the accleration in the z direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval stand deviations was then calculated, which is the value seen for this observation in my final summary table.  
 
 * [49] "FFT Body Accelerometer Jerk Mean X" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk in the x direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.    
 
 * [50] "FFT Body Accelerometer Jerk Mean Y" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk in the y direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.       
 
 * [51] "FFT Body Accelerometer Jerk Mean Z" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk in the z direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.         
 
 * [52] "FFT Body Accelerometer Jerk Standard Deviation X" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk in the x direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.   
 
 * [53] "FFT Body Accelerometer Jerk Standard Deviation Y" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk in the y direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.   
 
 * [54] "FFT Body Accelerometer Jerk Standard Deviation Z" - a numeric observation where:
 
 ** In every 2.56 second interval the jerk in the z direction was recorded by the accelerometer 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.     
 
 * [55] "FFT Body Gyroscope Mean X" - a numeric observation where: 
 
 ** In every 2.56 second interval the angular velocity about the x-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity. 
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.
 
 * [56] "FFT Body Gyroscope Mean Y" - a numeric observation where: 
 
 ** In every 2.56 second interval the angular velocity about the y-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table. 
 
 * [57] "FFT Body Gyroscope Mean Z" - a numeric observation where: 
 
 ** In every 2.56 second interval the angular velocity about the z-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.  
 
 * [58] "FFT Body Gyroscope Standard Deviation X" - a numeric observation where: 
 
 ** In every 2.56 second interval the angular velocity about the x-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.
 
 * [59] "FFT Body Gyroscope Standard Deviation Y" - a numeric observation where: 
 
 ** In every 2.56 second interval the angular velocity about the y-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table. 
 
 * [60] "FFT Body Gyroscope Standard Deviation Z" - a numeric observation where: 
 
 ** In every 2.56 second interval the angular velocity about the z-axis was recorded by the gyroscope 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.
 
 * [61] "FFT Body Accelerometer Magnitude Mean" - a numeric observation where:
 
 ** In every 2.56 second interval the magnitude of the net accleration was calculated from the accelerometer data 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.  
 
 * [62] "FFT Body Accelerometer Magnitude Standard Deviation" - a numeric observation where:
 
 ** In every 2.56 second interval the magnitude of the net accleration was calculated from the accelerometer data 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval stand deviations was then calculated, which is the value seen for this observation in my final summary table. 
 
 * [63] "FFT Body Accelerometer Jerk Magnitude Mean" - - a numeric observation where:
 
 ** In every 2.56 second interval the  magitude of the jerk was calculated from the accelerometer data 128 times for the given subject participating in the given activity. 
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.  
 
 * [64] "FFT Body Accelerometer Jerk Magnitude Standard Deviation" - a numeric observation where:
 
 ** In every 2.56 second interval the  magitude of the jerk was calculated by from the accelerometer data 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.    
 
 * [65] "FFT Body Gyroscope Magnitude Mean" - a numeric observation where:
 
 ** In every 2.56 second interval the net magnitude of the angular velocity was calculated from the gyroscope data 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The mean of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval means was then calculated, which is the value seen for this observation in my final summary table.        
 
 * [66] "FFT Body Gyroscope Magnitude Standard Deviation" - a numeric observation where:
 
 ** In every 2.56 second interval the net magnitude of the angular velocity was calculated from the gyroscope data 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain.
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.   
 
 * [67] "FFT Body Gyroscope Jerk Magnitude Mean" - a numeric observation where:
 
 ** In every 2.56 second interval the net magnitude of the angular velocity was calculated from the gyroscope data 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain. 
 ** The mean of each 2.56 second interval was then calculated.     
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.
 
 * [68] "FFT Body Gyroscope Jerk Magnitude Standard Deviation" - a numeric observation where:
 
 ** In every 2.56 second interval the net magnitude of the jerk was calculated from the gyroscope data 128 times for the given subject participating in the given activity.
 ** A fast fourier transform algorithim was then applied to the data in each interval to convert the data from the time domain to the frequency domain. 
 ** The standard deviation of each 2.56 second interval was then calculated.
 ** This was the data that was passed to us in the train/test files.
 ** The mean of all of these interval standard deviations was then calculated, which is the value seen for this observation in my final summary table.  