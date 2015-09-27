## README
### This file has explanation of the steps used in the run_analysis.R file
I created only one script for the task. I realize that it would be more 
usual appropriate to create a function calling other pieces of code but 
for this project I ran out of time for that. So, the description:

1 Loading the datasets in different objects
2 I used the features.txt to name the variables and I named the series in y - files as 
activity and subject - files as subject
3 I used cbind() to create two objects that included the identifiers and variables
4 Then I used filter() to extract only the means and standard devisions from the datasets
5 Next I combined the dataset using rbind()
6 I used the activity labels to name the activities
7 simplified the variable names by changing them all to small caps and taking
ou -'s. I had problems with the brackets and in the lack of time I ended up deleting 
them from the text file.
8 I used melt() and dcast() functions to calculate the means for all the activity/subject combinations
9 wrote a text file.


 
 
 
 
 
 
 










