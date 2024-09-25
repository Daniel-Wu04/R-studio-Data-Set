df <- read.csv("/Users/wuda/Downloads/StudentPerformanceFactors.csv")

grades <- table(df$Exam_Score)
table(df$Exam_Score, df$Access_to_Resources)
table(df$Exam_Score, df$Distance_from_Home)
tapply(df[df$Motivation_Level == "Low",]$Exam_Score, df[df$Motivation_Level =="Low",]$Hours_Studied, mean)
tapply(df[df$Motivation_Level == "Medium",]$Exam_Score, df[df$Motivation_Level =="Medium",]$Hours_Studied, mean)
tapply(df[df$Motivation_Level == "High",]$Exam_Score, df[df$Motivation_Level =="High",]$Hours_Studied, mean)

tapply(df$Exam_Score, df$Parental_Education_Level, mean)
tapply(df$Exam_Score, df$Family_Income, mean)

tapply(df$Exam_Score, df$Distance_from_Home, mean)
tapply(df$Attendance, df$Distance_from_Home, mean)

motivelow <- subset(df, Motivation_Level == "Low")
max(motivelow$Exam_Score)

tapply(df$Exam_Score, df$Attendance, mean)
tapply(df$Hours_Studied, df$Motivation_Level, max)
tapply(df$Exam_Score, df$Motivation_Level, mean)
score <- table (df$Exam_Score)
score

table(df$Exam_Score, df$Attendance)
tapply(df$Exam_Score, df$ Tutoring_Sessions, max)
tapply(df$Exam_Score, df$Previous_Scores, sd)
tapply(df$Exam_Score, df$Parental_Involvement, mean)
tapply(df$Exam_Score, df$Family_Income, mean)
table(df$Family_Income, df$ Tutoring_Sessions)
tapply(df$Exam_Score, df$Tutoring_Sessions, mean)
tapply(df$Hours_Studied, df$Tutoring_Sessions, mean)
tapply(df$Exam_Score, df$Sleep_Hours, mean)
tapply(df$Exam_Score, df$Parental_Education_Level, mean)

 tapply(df[df$Motivation_Level == "Low",]$Exam_Sc    ore, df[df$Motivation_Level =="Low",]$Previous_Scores, sd)
tapply(df$Attendance, df$School_Type, mean)

tapply(df$Exam_Score, df$Peer_Influence,mean)

exam <- table(df$Exam_Score)
table(df$Exam_Score, df$ Attendance)
table(df$Parental_Education_Level, df$Parental_Involvement)

plot(df$Attendance,df$Exam_Score,ylab="Exam Score",xlab="Attendance",main=" Attendance vs Score",col="red")

colors<- c('red','blue','cyan','yellow','green') 

t<-table(df$Motivation_Level)

barplot(t,xlab="Motivation Level",ylab="Number of Students",col=colors, 
        main="Barplot for student Motivation Level",border="black")

t<-table(df$Parental_Education_Level)

barplot(t,xlab="Parent Education Level",ylab="Number of Students",col=colors, 
        main="Barplot for Parental Education Level",border="black")


boxplot(Exam_Score~Family_Income,data=df,xlab="Family Income",ylab="Exam Score", main="Boxplot of Family Income vs Exam Score",col=colors,border="black")


mosaicplot(df$Peer_Influence~df$Motivation_Level,xlab = 'Peer Influence',ylab = ' Motivational Level', main = "Mosiac of Peer Influence vs Motivation Level",col=colors,border="black")
