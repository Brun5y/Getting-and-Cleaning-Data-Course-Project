## These first lines of code read in the data after you have extracted the UCI HAR Dataset directory into your working directory.
## I also set up an index for extracting the columns that contain means and standard deviations.

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
activity_labels[,2] <- as.character(activity_labels[,2]) 
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
x_testnames <- read.table("./UCI HAR Dataset/features.txt")
testsubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
x_trainnames <- read.table("./UCI HAR Dataset/features.txt")
trainsubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
index <- c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543)




## In these next few lines of code I give the test data columuns names, extract the columns that use mean and standard deviation as a summary statistic using the index, and add on the numeric data for the test activity labels.

names(x_test) <- x_testnames[,2]
x_test <- cbind(x_test[,index])
test <- cbind(y_test,x_test)

## Then I name the elements of the activity labels column, and use a series of for loops to rename the numeric activity labels with the more descriptive character names.

names(test)[1] <- "Activity Labels"
i <- 1
for(i in 1:length(test[,1])){
    j <- 1
    for(j in 1:6){
        if(test[i,1] == activity_labels[j,1]){
            test[i,1] <- activity_labels[j,2]
        }
        else{
            test[i,1] <- test[i,1]
        }
    }
}

## Then I add the data relating each row of the table to the subject that was being observed to the first column of the table and name that new column subjects. 

test <- cbind(testsubjects,test)
names(test)[1] <- "Subjects"



## In these next few lines of code I give the train data columuns names, extract the columns that use mean and standard deviation as a summary statistic using the index, and add on the numeric data for the train activity labels.

names(x_train) <- x_trainnames[,2]
x_train <- cbind(x_train[,index])
train <- cbind(y_train,x_train)
names(train)[1] <- "Activity Labels"

## Then I name the elements of the activity labels column, and use a series of for loops to rename the numeric activity labels with the more descriptive character names.

p <- 1
for(p in 1:length(train[,1])){
    q <- 1
    for(q in 1:6){
        if(train[p,1] == activity_labels[q,1]){
            train[p,1] <- activity_labels[q,2]
        }
        else{
            train[p,1] <- train[p,1]
        }
    }
}

## Then I add the data relating each row of the to the subject that was being observed to the first column of the table and name it subjects. 

train <- cbind(trainsubjects,train)
names(train)[1] <- "Subjects"


## Next I combine the test and train tables into one big table and order it. I order it first on the basis of subject then on the basis of activity.

data <- rbind(test,train)
data <- data[order(data[,1],data[,2]),]

## Next I edit the variable names to make them more desciptive and easier to read.

names(data) <- gsub("-"," ", names(data),)
names(data) <- sub("t","", names(data),)
names(data) <- sub("BodyBody","Body", names(data),)
names(data) <- sub("Body","Body ", names(data),)
names(data) <- sub("Acc","Accelerometer ", names(data),)
names(data) <- sub("Gravity","Gravity ", names(data),)
names(data) <- sub("Gyro","Gyroscope ", names(data),)
names(data) <- sub("Jerk","Jerk ", names(data),)
names(data) <- sub("Mag","Magnitude", names(data),)
names(data) <- sub("mean()","Mean", names(data),)
names(data) <- sub("std()","Standard Deviation", names(data),)
names(data) <- sub("sd()","Standard Deviation", names(data),)
names(data)[1] <- "Subjects"
names(data)[2] <- "Activity Labels"
names(data) <- sub("f","FFT ", names(data),)
names(data) <- gsub("  ", " ", names(data))
names(data) <- gsub("\\(\\)", "", names(data))




## Next I create a data.frame for the final summary of the data.  I make 180 by 68. I give the columns the same names as the previous data.frame.  I fill in the first two columns with the respective subject labels and numeric activity labels.

datasummary <- as.data.frame(matrix(rep(0,180*length(names(data))), nrow = 180, ncol = length(names(data))))
names(datasummary) <- names(data)
datasummary[,1] <- sort(rep(1:30,6))
datasummary[,2] <- rep(1:6,30)

## Then I name the elements of the activity labels column, and use a series of for loops to rename the numeric activity labels with the more descriptive character names.

x <- 1
for(x in 1:length(datasummary[,1])){
    y <- 1
    for(y in 1:6){
        if(datasummary[x,2] == activity_labels[y,1]){
            datasummary[x,2] <- activity_labels[y,2]
        }
        else{
            datasummary[x,2] <- datasummary[x,2]
        }
    }
}
datasummary <- datasummary[order(datasummary[,1],datasummary[,2]),]

## Then I fill in the observational columns of my matrix using a series of for loops that take the mean of the data for each subject doing a particular activity from the data table and place it in the appropriate spot in the datasummary table.

m <- 1
for(m in 1:30){
    subdata <- data[data$Subjects == m,]
    n <- 1
    for(n in 1:6){
        subsubdata <- subdata[subdata$Activity == activity_labels[n,2],]
        o <- 3
        for(o in 3:68){
            datasummary[datasummary$Subjects == m | datasummary$Activity == activity_labels[n,2], o] <- mean(subsubdata[,o]) 
        }
    }
}

## Finally I write the summary table to a text file in my working directory.
write.table(datasummary,"./datasummary.txt",row.names=F)
