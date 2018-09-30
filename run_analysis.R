#1 - Merges the training and the test sets to create one data set

library(dplyr)

setwd("C:/Users/MS/Desktop/Coursera/JH Data Science/Projects/Proyectos/Prog_Assigment4")

# Downloading file/unzipping if neccesary
if (!file.exists("GCD_CourseProject.zip")){
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL, "GCD_CourseProject.zip", method="curl")
        unzip("GCD_CourseProject.zip", exdir = getwd())
}

# We assign train data into data frames.
train_x <- read.table('./UCI HAR Dataset/train/X_train.txt', header = FALSE)
train_y <- read.table('./UCI HAR Dataset/train/y_train.txt', header = FALSE)
train_subject <- read.table('./UCI HAR Dataset/train/subject_train.txt',header = FALSE)

# We assign test data into data frames.
test_x <- read.table('./UCI HAR Dataset/test/X_test.txt', header = FALSE)
test_y <- read.table('./UCI HAR Dataset/test/y_test.txt', header = FALSE)
test_subject <- read.table('./UCI HAR Dataset/test/subject_test.txt', header = FALSE)

#Merge train data frames
merge_train <-  data.frame(train_subject, train_y, train_x)
#Merge test data frames
merge_test <-  data.frame(test_subject, test_y, test_x)
#Merge them all together 
merge_all <- rbind(merge_train, merge_test)

# We assign feature data into data frame and then turn it into string
features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)
features <- as.character(features$V2)

#rename columns of merged data frame and assign features data into the columns
names(merge_all) <- c(c('subject', 'activity'), features)

#2 - Extract colums with mean and standard deviation

#returns cnumer for mean|std in features
mean.std <- grep('mean|std', features)

#subsets mean|std colums in data set (+2 to match data frame with extra data first 2 columns)
merge_all_rename <- merge_all[,c(1,2,mean.std + 2)]


#3 - Uses descriptive activity names to name the activities in the data set

activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE)
activity_labels <- as.character(activity_labels$V2)
merge_all_rename$activity <- activity_labels[merge_all_rename$activity]

#4 - Appropriately labels the data set with descriptive variable names

names(merge_all_rename)<-gsub("-mean()", "Mean", names(merge_all_rename), ignore.case = TRUE)
names(merge_all_rename)<-gsub("-std()", "STD", names(merge_all_rename), ignore.case = TRUE)
names(merge_all_rename)<-gsub("-freq()", "Frequency", names(merge_all_rename), ignore.case = TRUE)
names(merge_all_rename)<-gsub("Acc", "Accelerometer", names(merge_all_rename))
names(merge_all_rename)<-gsub("Gyro", "Gyroscope", names(merge_all_rename))
names(merge_all_rename)<-gsub("BodyBody", "Body", names(merge_all_rename))
names(merge_all_rename)<-gsub("Mag", "Magnitude", names(merge_all_rename))
names(merge_all_rename)<-gsub("^t", "Time", names(merge_all_rename))
names(merge_all_rename)<-gsub("^f", "Frequency", names(merge_all_rename))
names(merge_all_rename)<-gsub("tBody", "TimeBody", names(merge_all_rename))
names(merge_all_rename)<-gsub("angle", "Angle", names(merge_all_rename))
names(merge_all_rename)<-gsub("gravity", "Gravity", names(merge_all_rename))

#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Creates tidy data set with the average of each variable (for each activity and each subject)
tidydata <- merge_all_rename %>%
        group_by(subject, activity) %>%
        summarise_all(mean)

#Export final summarized table into txt
write.table(tidydata, "TidyData.txt", row.name=FALSE)        




