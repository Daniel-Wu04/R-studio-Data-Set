getwd()
df <- read.csv("/Users/wuda/Downloads/StudentPerformanceFactors.csv")

grades <- table(df$Exam_Score)
table(df$Exam_Score, df$Access_to_Resources)
table(df$Exam_Score, df$Distance_from_Home)
tapply(df[df$Motivation_Level == "Low",]$Exam_Score, df[df$Motivation_Level =="Low",]$Hours_Studied, mean)
tapply(df[df$Motivation_Level == "Medium",]$Exam_Score, df[df$Motivation_Level =="Medium",]$Hours_Studied, mean)
tapply(df[df$Motivation_Level == "High",]$Exam_Score, df[df$Motivation_Level =="High",]$Hours_Studied, mean)

tapply(df$Exam_Score, df$Parental_Education_Level, mean)
tapply(df$Exam_Score, df$Distance_from_Home, mean)
tapply(df$Exam_Score, df$Attendance, mean)
tapply(df$Attendance, df$Distance_from_Home, mean)
tapply(df$Hours_Studied, df$Motivation_Level, max)
tapply(df$Exam_Score, df$Motivation_Level, mean)
score <- table (df$Exam_Score)
table(df$Exam_Score, df$Attendance)
tapply(df$Exam_Score, df$ Tutoring_Sessions, max)
tapply(df$Exam_Score, df$Previous_Scores, sd)

tapply(df[df$Motivation_Level == "Low",]$Exam_Sc    ore, df[df$Motivation_Level =="Low",]$Previous_Scores, sd)
tapply(df$Attendance, df$School_Type, mean)

exam <- table(df$Exam_Score)
table(df$Exam_Score, df$ Attendance)

plot(df$Attendance,df$Exam_Score,ylab="score",xlab="Attendance",main=" Attendance vs Score",col="red")

colors<- c('red','blue','cyan','yellow','green') # Assigning different colors to bars

#lets make a table for the grades of students and counts of students for each Grade. 

t<-table(df$Motivation_Level)

#once we have the table lets create a barplot for it.

barplot(t,xlab="Motivation Level",ylab="Number of Students",col=colors, 
        main="Barplot for student Motivation Level",border="black")

t<-table(df$Access_to_Resources)

#once we have the table lets create a barplot for it.

barplot(t,xlab="Resources",ylab="Number of Students",col=colors, 
        main="Barplot for student Resource",border="black")


boxplot(Exam_Score~Family_Income,data=df,xlab="Exam_Score",ylab="Income", main="Boxplot of Score vs Income",col=colors,border="black")



mosaicplot(df$Teacher_Quality~df$Access_to_Resources,xlab = 'Exam_Score',ylab = 'Parental Education', main = "Mosiac of grade vs Parent Education in class",col=colors,border="black")
