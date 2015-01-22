# create a new directory to download the files
# The instructions up until row 8 will download the file to the working directory DataCleaning. Instructions starting at row 9 will work if the folder UCI HAR Dataset is already uploaded to the directory DataCleaning
if(!file.exists("/Users/Lillian/Documents/DataCleaning")){dir.create("/Users/Lillian/Documents/DataCleaning")}
#copy the Url
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download and unzip file
download.file(fileUrl, destfile = "/Users/Lillian/Documents/DataCleaning/allData.zip", method = "curl")
unzip(zipfile = "/Users/Lillian/Documents/DataCleaning/allData.zip", exdir = "/Users/Lillian/Documents/DataCleaning")
#Create path for saving files and load 6 files into R workspace
path <- file.path("/Users/Lillian/Documents/DataCleaning", "UCI HAR Dataset")
activityTest <- read.table(file.path(path, "test", "y_test.txt"), header = FALSE)
activityTrain <- read.table(file.path(path, "train", "y_train.txt"), header = FALSE)
subjectTest <- read.table(file.path(path, "test", "subject_test.txt"), header = FALSE)
subjectTrain <- read.table(file.path(path, "train", "subject_train.txt"), header = FALSE)
featuresTest <- read.table(file.path(path, "test", "X_test.txt"), header = FALSE)
featuresTrain <- read.table(file.path(path, "train", "X_train.txt"), header = FALSE)

#1. merge train and test data by doing column and row bind and creating one data set called "allDataWearableDevices".
allDataWearableDevices <- cbind(rbind(featuresTrain, featuresTest), rbind(subjectTrain,subjectTest), rbind(activityTrain, activityTest))
#Set the variable names in the dataset by getting the names from the file features.txt, and changing the column names in the dataset "allDataWearableDevices".
featuresColNames <- read.table(file.path(path, "features.txt"), header = FALSE)
variableNames <- c(as.character(features[,2]), "subject", "activity")
colnames(allDataWearableDevices) <- variableNames

#2.	Extract only the measurements on the mean and standard deviation for each measurement. 
#Subset dataset to take only features with "mean" or "std" in their names
subsetfeatures <- features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]
selectedColNames <- c(as.character(subsetfeatures), "subject", "activity")
totalData <- subset(allDataWearableDevices, select = selectedColNames)

#3.	Uses descriptive activity names to name the activities in the data set
#Read activity names:
activityNames <- read.table(file.path(path, "activity_labels.txt"), header = FALSE)
#Substitute activity numbers with names
totalData$activity <- factor(totalData$activity, labels = activityNames[,2])

#4. Appropriately labels the data set with descriptive variable names.
names(totalData) <- gsub("\\()","", names(totalData))
names(totalData) <- gsub("std$","StdDev", names(totalData))
names(totalData) <- gsub("std","StdDev", names(totalData))
names(totalData) <- gsub("mean","Mean", names(totalData))
names(totalData) <- gsub("^(t)","time", names(totalData))
names(totalData) <- gsub("^(f)","frequency", names(totalData))
names(totalData) <- gsub("Acc","Accelerometer", names(totalData))
names(totalData) <- gsub("Gyro","Gyroscope", names(totalData))
names(totalData) <- gsub("Mag","Magnitude", names(totalData))
names(totalData) <- gsub("BodyBody","Body", names(totalData))
names(totalData) <- gsub("-", "", names(totalData))

#5.	From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)
library(reshape2)

readyData <- melt(totalData, id.vars = c("subject", "activity")) 
tidyData <- dcast(readyData, subject + activity ~ variable, mean)

#Write the data to write.table
write.table(tidyData, "tidyData.txt", row.name = FALSE)
