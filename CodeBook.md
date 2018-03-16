


    CODEBOOK
    Peer-graded Assignment
    Coursera's Getting and Cleaning Data - Week 4



**This file lists and explains the variables in the data frames "totaldata" and "averages", both built in the scope of Coursera's Get and Cleaning Data peer-graded final project.**
**Each variable represent either a TIME or FREQUENCY domain signal from the accelerometer and gyroscope of a smartphone used in the study Human Activity Using Smartphones Data Set (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).**
**The FREQUENCY domain signals contain "Freq" at the end of the variable name, and all others are TIME domain ones.**


.............................................
.................DATA SETS...................
.............................................

*totaldata*

The data set totaldata is the resulting table from merging the test and training sets from the study. Its variables are a selection of measurements on either, the mean, or the standart deviation of the signals captured in the study. While the mean variable names contain the word "Mean", the standard deviation ones contain "StDev".

*averages*

The data set averages contains the averages of each variable of each activity and each subject. Since data readers are expected to know that before viewing this data frame, no changes were made to the variable names; this way, the same variable names of totaldata were used here.


.............................................
.................VARIABLES...................
.............................................

    activity: 

        type of activity performed by the subject among "walking", "upstairs", "downstairs", "sitting", "standing", "laying"

    subjectID: 
    
        subject identity code, from 1 to 30. 


### TIME DOMAIN SIGNALS (constant rate = 50 Hz) ###
...................................................



BODY ACCELERATION RAW SIGNALS

    BodyAccMeanX: 
  
      mean of the body acceleration raw signals, axe X
  

    BodyAccMeanY: 
  
      mean of the body acceleration raw signals, axe Y
  

    BodyAccMeanZ: 
  
      mean of the body acceleration raw signals, axe Z
      

    BodyAccStDevX: 
  
      standard deviation of the body acceleration raw signals, axe X
  

    BodyAccStDevY: 
  
      standard deviation of the body acceleration raw signals, axe Y
  

    BodyAccStDevZ: 
  
      standard deviation of the body acceleration raw signals, axe Z




GRAVITY ACCELERATION RAW SIGNALS

    GravityAccMeanX: 

      mean of the gravity acceleration raw signals, axe X
      

    GravityAccMeanY: 

      mean of the gravity acceleration raw signals, axe Y
      

    GravityAccMeanZ: 

      mean of the gravity acceleration raw signals, axe Z
      

    GravityAccStDevX: 

      standard deviation of the gravity acceleration raw signals, axe X
      

    GravityAccStDevY: 

      standard deviation of the gravity acceleration raw signals, axe Y
      

    GravityAccStDevZ: 

      standard deviation of the gravity acceleration raw signals, axe Z




BODY ACCELERATION JERK SIGNALS

    BodyAccJerkMeanX: 

      mean of the body acceleration jerk signals, axe X
      

    BodyAccJerkMeanY: 
    
      mean of the body acceleration jerk signals, axe Y
      

    BodyAccJerkMeanZ: 
    
      mean of the body acceleration jerk signals, axe Z
      

    BodyAccJerkStDevX: 
    
      standard deviation of the body acceleration jerk signals, axe X
      

    BodyAccJerkStDevY: 
    
      standard deviation of the body acceleration jerk signals, axe Y
      

    BodyAccJerkStDevZ: 
    
      standard deviation of the body acceleration jerk signals, axe Z
      



ANGULAR VELOCITY RAW SIGNALS

    AngularVelocMeanX: 
    
      mean of the angular velocity raw signals, axe X
      

    AngularVelocMeanY: 
    
      mean of the angular velocity raw signals, axe Y
      

    AngularVelocMeanZ: 
    
      mean of the angular velocity raw signals, axe Z
      

    AngularVelocStDevX:  
    
      standard deviation of the angular velocity raw signals, axe X
      

    AngularVelocStDevY: 
    
      standard deviation of the angular velocity raw signals, axe Y
      

    AngularVelocStDevZ: 
    
      standard deviation of the angular velocity raw signals, axe Z
      


ANGULAR VELOCITY JERK SIGNALS

    AngularVelocJerkMeanX: 
    
      mean of the angular velocity jerk signals, axe X
      

    AngularVelocJerkMeanY: 
    
      mean of the angular velocity jerk signals, axe Y
      

    AngularVelocJerkMeanZ: 
    
      mean of the angular velocity jerk signals, axe Z
      

    AngularVelocJerkStDevX: 
    
      standard deviation of the angular velocity jerk signals, axe X
      

    AngularVelocJerkStDevY: 
    
      standard deviation of the angular velocity jerk signals, axe Y
      

    AngularVelocJerkStDevZ: 
    
      standard deviation of the angular velocity jerk signals, axe Z
      



MAGNITUDE OF THE RAW AND JERK 3-AXIAL SIGNALS

    BodyAccMagnitMean: 
    
      mean of the body acceleration raw signals magnitude
      

    BodyAccMagnitStDev: 
    
      standard deviation of the body acceleration raw signals magnitude
      

    GravityAccMagnitMean: 
    
      mean of the gravity acceleration raw signals magnitude
      

    GravityAccMagnitStDev: 
    
      standard deviation of the gravity acceleration raw signals magnitude
      

    BodyAccJerkMagnitMean: 
    
      mean of the body acceleration jerk signals magnitude
      

    BodyAccJerkMagnitStDev: 
    
      standard deviation of the body acceleration jerk signals magnitude
      

    AngularVelocMagnitMean: 
    
      mean of the angular velocity raw signals magnitude
      

    AngularVelocMagnitStDev: 
    
      standard deviation of the angular velocity raw signals magnitude
      

    AngularVelocJerkMagnitMean: 
    
      mean of the angular velocity jerk signals magnitude
      

    AngularVelocJerkMagnitStDev: 
    
      standard deviation of the angular velocity jerk signals magnitude
      


### FREQUENCY DOMAIN SIGNALS (obtained after applying a Fast Fourier Transform (FFT) over time domain signals) ###
...................................................................................................................

BODY ACCELERATION FFT RAW SIGNALS (FFT)

    BodyAccMeanXFreq: 

      mean of the body acceleration raw signals, axe X, after FFT
      

    BodyAccMeanYFreq: 
    
      mean of the body acceleration raw signals, axe Y, after FFT
      

    BodyAccMeanZFreq: 
    
      mean of the body acceleration raw signals, axe Z, after FFT
      

    BodyAccStDevXFreq: 
    
      standard deviation of the body acceleration raw signals, axe X, after FFT
      

    BodyAccStDevYFreq: 
    
      standard deviation of the body acceleration raw signals, axe Y, after FFT
      

    BodyAccStDevZFreq: 
    
      standard deviation of the body acceleration raw signals, axe Z, after FFT


BODY ACCELERATION FFT JERK SIGNALS (FFT)

    BodyAccJerkMeanXFreq: 
    
      mean of the body acceleration jerk signals, axe X, after FFT
      

    BodyAccJerkMeanYFreq: 
    
      mean of the body acceleration jerk signals, axe Y, after FFT
      

    BodyAccJerkMeanZFreq: 
    
      mean of the body acceleration jerk signals, axe Z, after FFT
      

    BodyAccJerkStDevXFreq: 
    
      standard deviation of the body acceleration jerk signals, axe X, after FFT
      

    BodyAccJerkStDevYFreq: 
    
      standard deviation of the body acceleration jerk signals, axe Y, after FFT
      

    BodyAccJerkStDevZFreq: 
    
      standard deviation of the body acceleration jerk signals, axe Z, after FFT
      


ANGULAR VELOCITY FFT RAW SIGNALS (FFT)

    AngularVelocMeanXFreq: 
    
      [,55] mean of the angular velocity raw signals, axe X, after FFT
      

    AngularVelocMeanYFreq: 
    
      [,56] mean of the angular velocity raw signals, axe Y, after FFT
      

    AngularVelocMeanZFreq: 
    
      [,57] mean of the angular velocity raw signals, axe Z, after FFT
      

    AngularVelocStDevXFreq: 
    
      [,58] standard deviation of the angular velocity raw signals, axe X, after FFT
      

    AngularVelocStDevYFreq: 
    
      [,59] standard deviation of the angular velocity raw signals, axe Y, after FFT
      

    AngularVelocStDevZFreq: 
    
      [,60] standard deviation of the angular velocity raw signals, axe Z, after FFT
      

MAGNITUDE OF THE RAW AND JERK 3-AXIAL SIGNALS (FFT)

    BodyAccMagnitMeanFreq: 
    
      mean of the body acceleration raw signals magnitude, after FFT
      

    BodyAccMagnitStDevFreq: 
    
      standard deviation of the body acceleration raw signals magnitude, after FFT
      

    BodyAccJerkMagnitMeanFreq: 
    
      mean of the body acceleration jerk signals magnitude, after FFT
      

    BodyAccJerkMagnitStDevFreq: 
    
      standard deviation of the body acceleration jerk signals magnitude, after FFT
      

    AngularVelocMagnitMeanFreq: 
    
      mean of the angular velocity raw signals magnitude, after FFT
      

    AngularVelocMagnitStDevFreq: 
    
      standard deviation of the angular velocity raw signals magnitude, after FFT
      

    AngularVelocJerkMagnitMeanFreq: 
    
      mean of the angular velocity jerk signals magnitude, after FFT
      

    AngularVelocJerkMagnitStDevFreq: 
    
      standard deviation of the angular velocity jerk signals magnitude, after FFT
      
  
