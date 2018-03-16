run_analysis <- function(){

library(dplyr)
library(data.table)

subject <- read.table("./UCI HAR Dataset/test/sub_test.txt")
subject <- subject %>% rename(subjectID = V1)
activity <- read.table("./UCI HAR Dataset/test/y_test.txt")
activity <- activity %>% rename(activity = V1)
features <- read.table("./UCI HAR Dataset/test/X_test.txt")
features <- features %>% 
            select(V1:V6, V41:V46, V81:V86, V121:V126,
                   V161:V166, V201, V202, V214, V215, V227, V228, 
                   V240, V241, V253, V254, V266:V271, V345:V350, 
                   V424:V429, V503, V504, V516, V517, V529, V530, 
                   V542, V543)
testdata <- data.table(subject, activity, features)

subject <- read.table("./UCI HAR Dataset/train/sub_train.txt")
subject <- subject %>% rename(subjectID = V1)
activity <- read.table("./UCI HAR Dataset/train/y_train.txt")
activity <- activity %>% rename(activity = V1)
features <- read.table("./UCI HAR Dataset/train/X_train.txt")
features <- features %>%
            select(V1:V6, V41:V46, V81:V86, V121:V126,
                   V161:V166, V201, V202, V214, V215, V227, V228, 
                   V240, V241, V253, V254, V266:V271, V345:V350,
                   V424:V429, V503, V504, V516, V517, V529, V530, 
                   V542, V543)
traindata <- data.table(subject, activity, features)

totaldata <- merge(testdata, traindata, all=TRUE) %>%
  rename(BodyAccMeanX = V1, BodyAccMeanY = V2, BodyAccMeanZ = V3, BodyAccStDevX = V4,
         BodyAccStDevY = V5, BodyAccStDevZ = V6, GravityAccMeanX = V41, GravityAccMeanY = V42,
         GravityAccMeanZ = V43, GravityAccStDevX = V44, GravityAccStDevY = V45, GravityAccStDevZ = V46,
         BodyAccJerkMeanX = V81,BodyAccJerkMeanY = V82, BodyAccJerkMeanZ = V83, BodyAccJerkStDevX = V84,
         BodyAccJerkStDevY = V85, BodyAccJerkStDevZ = V86, AngularVelocMeanX = V121, AngularVelocMeanY = V122, 
         AngularVelocMeanZ = V123, AngularVelocStDevX = V124, AngularVelocStDevY = V125, AngularVelocStDevZ = V126, 
         AngularVelocJerkMeanX = V161, AngularVelocJerkMeanY = V162, AngularVelocJerkMeanZ = V163, AngularVelocJerkStDevX = V164, 
         AngularVelocJerkStDevY = V165, AngularVelocJerkStDevZ = V166, BodyAccMagnitMean = V201, BodyAccMagnitStDev = V202,  
         GravityAccMagnitMean = V214, GravityAccMagnitStDev = V215, BodyAccJerkMagnitMean = V227, BodyAccJerkMagnitStDev = V228,
         AngularVelocMagnitMean = V240, AngularVelocMagnitStDev = V241, AngularVelocJerkMagnitMean = V253, AngularVelocJerkMagnitStDev = V254,
         BodyAccMeanXFreq = V266, BodyAccMeanYFreq = V267, BodyAccMeanZFreq = V268, BodyAccStDevXFreq = V269,
         BodyAccStDevYFreq = V270, BodyAccStDevZFreq = V271, BodyAccJerkMeanXFreq = V345, BodyAccJerkMeanYFreq = V346, 
         BodyAccJerkMeanZFreq = V347, BodyAccJerkStDevXFreq = V348, BodyAccJerkStDevYFreq = V349, BodyAccJerkStDevZFreq = V350, 
         AngularVelocMeanXFreq = V424, AngularVelocMeanYFreq = V425, AngularVelocMeanZFreq = V426, AngularVelocStDevXFreq = V427, 
         AngularVelocStDevYFreq = V428, AngularVelocStDevZFreq = V429, BodyAccMagnitMeanFreq = V503, BodyAccMagnitStDevFreq = V504,
         BodyAccJerkMagnitMeanFreq = V516, BodyAccJerkMagnitStDevFreq = V517, AngularVelocMagnitMeanFreq = V529, AngularVelocMagnitStDevFreq= V530, 
         AngularVelocJerkMagnitMeanFreq = V542, AngularVelocJerkMagnitStDevFreq = V543) %>%
  mutate(activity=replace(activity, activity==1, "walking")) %>%
  mutate(activity=replace(activity, activity==2, "upstairs")) %>%
  mutate(activity=replace(activity, activity==3, "downstairs")) %>%
  mutate(activity=replace(activity, activity==4, "sitting")) %>%
  mutate(activity=replace(activity, activity==5, "standing")) %>%
  mutate(activity=replace(activity, activity==6, "laying")) %>%
  as.data.frame()

grouped_data <- group_by(totaldata, activity, subjectID)
averages <- summarise(grouped_data, 
                      BodyAccMeanX = mean(BodyAccMeanX), BodyAccMeanY = mean(BodyAccMeanX),
                      BodyAccMeanZ = mean(BodyAccMeanZ), BodyAccStDevX = mean(BodyAccStDevX),
                      BodyAccStDevY = mean(BodyAccStDevY), BodyAccStDevZ  = mean(BodyAccStDevZ),
                      GravityAccMeanX = mean(GravityAccMeanX), GravityAccMeanY = mean(GravityAccMeanY),
                      GravityAccMeanZ = mean(GravityAccMeanZ), GravityAccStDevX = mean(GravityAccStDevX),
                      GravityAccStDevY = mean(GravityAccStDevY), GravityAccStDevZ = mean(GravityAccStDevZ),
                      BodyAccJerkMeanX = mean(BodyAccJerkMeanX), BodyAccJerkMeanY = mean(BodyAccJerkMeanY),
                      BodyAccJerkMeanZ = mean(BodyAccJerkMeanZ), BodyAccJerkStDevX = mean(BodyAccJerkStDevX),
                      BodyAccJerkStDevY = mean(BodyAccJerkStDevY), BodyAccJerkStDevZ = mean(BodyAccJerkStDevZ),
                      AngularVelocMeanX = mean(AngularVelocMeanX), AngularVelocMeanY = mean(AngularVelocMeanY),
                      AngularVelocMeanZ = mean(AngularVelocMeanZ), AngularVelocStDevX = mean(AngularVelocStDevX),
                      AngularVelocStDevY = mean(AngularVelocStDevY), AngularVelocStDevZ = mean(AngularVelocStDevZ),
                      AngularVelocJerkMeanX = mean(AngularVelocJerkMeanX), AngularVelocJerkMeanY = mean(AngularVelocJerkMeanY),
                      AngularVelocJerkMeanZ = mean(AngularVelocJerkMeanZ), AngularVelocJerkStDevX = mean(AngularVelocJerkStDevX),
                      AngularVelocJerkStDevY = mean(AngularVelocJerkStDevY), AngularVelocJerkStDevZ = mean(AngularVelocJerkStDevZ),
                      BodyAccMagnitMean = mean(BodyAccMagnitMean), BodyAccMagnitStDev = mean(BodyAccMagnitStDev),
                      GravityAccMagnitMean = mean(GravityAccMagnitMean), GravityAccMagnitStDev = mean(GravityAccMagnitStDev),
                      BodyAccJerkMagnitMean = mean(BodyAccJerkMagnitMean), BodyAccJerkMagnitStDev = mean(BodyAccJerkMagnitStDev),
                      AngularVelocMagnitMean = mean(AngularVelocMagnitMean), AngularVelocMagnitStDev = mean(AngularVelocMagnitStDev),
                      AngularVelocJerkMagnitMean = mean(AngularVelocJerkMagnitMean), AngularVelocJerkMagnitStDev = mean(AngularVelocJerkMagnitStDev),
                      BodyAccMeanXFreq = mean(BodyAccMeanXFreq), BodyAccMeanYFreq = mean(BodyAccMeanYFreq),
                      BodyAccMeanZFreq = mean(BodyAccMeanZFreq), BodyAccStDevXFreq = mean(BodyAccStDevXFreq),
                      BodyAccStDevYFreq = mean(BodyAccStDevYFreq), BodyAccStDevZFreq = mean(BodyAccStDevZFreq),
                      BodyAccJerkMeanXFreq = mean(BodyAccJerkMeanXFreq), BodyAccJerkMeanYFreq = mean(BodyAccJerkMeanYFreq),
                      BodyAccJerkMeanZFreq = mean(BodyAccJerkMeanZFreq), BodyAccJerkStDevXFreq = mean(BodyAccJerkStDevXFreq),
                      BodyAccJerkStDevYFreq = mean(BodyAccJerkStDevYFreq), BodyAccJerkStDevZFreq = mean(BodyAccJerkStDevZFreq),
                      AngularVelocMeanXFreq = mean(AngularVelocMeanXFreq), AngularVelocMeanYFreq = mean(AngularVelocMeanYFreq),
                      AngularVelocMeanZFreq = mean(AngularVelocMeanZFreq), AngularVelocStDevXFreq = mean(AngularVelocStDevXFreq),
                      AngularVelocStDevYFreq = mean(AngularVelocStDevYFreq), AngularVelocStDevZFreq = mean(AngularVelocStDevZFreq),
                      BodyAccMagnitMeanFreq = mean(BodyAccMagnitMeanFreq), BodyAccMagnitStDevFreq = mean(BodyAccMagnitStDevFreq),
                      BodyAccJerkMagnitMeanFreq = mean(BodyAccJerkMagnitMeanFreq), BodyAccJerkMagnitStDevFreq = mean(BodyAccJerkMagnitStDevFreq),
                      AngularVelocMagnitMeanFreq = mean(AngularVelocMagnitMeanFreq), AngularVelocMagnitStDevFreq = mean(AngularVelocMagnitStDevFreq),
                      AngularVelocJerkMagnitMeanFreq = mean(AngularVelocJerkMagnitMeanFreq), AngularVelocJerkMagnitStDevFreq = mean(AngularVelocJerkMagnitStDevFreq)
                      )

averages <- as.data.frame(arrange(averages, activity, subjectID))
write.table(totaldata, "./UCI HAR Dataset/totaldata.txt", row.names = FALSE)
write.table(averages, "./UCI HAR Dataset/averages.txt", row.names = FALSE)
print("Two files were written in the directory UCI HAR Dataset in your working directory: 'totaldata.txt' is a dataset with the training and test sets and 'averages.txt' is a data set with the average of each variable for each activity and each subject. Also, two homonimous variables containing the data sets were created")
}
