#Read the csv file

df <- datasets::airquality
View(df)

head(df) #First 6 rows
head(df,10)
head(df,2)

tail(df)
tail(df,5)


#############Summary of the data#################

summary(df)
df$Month
df$Temp
summary(df$Temp)


attach(df)
Temp
Month
 
##############DATA VISUALIZATION IN R#############
#Scatter Plot

plot(x = Wind, y = Temp)

plot(Ozone, Solar.R, xlab = 'Ozone level', ylab = 'Solar',
     main = 'Scatterplot Between Ozone vs Solar',
     col = '#7371eb', pch = 16)

plot(df)

#Horizontal bar plot
barplot(Month)
unique(Month)
table(Month)

frequency <- table(Month)
barplot(frequency)

rm(frequency)

barplot(table(Month), col = 'green')


#Histogram
hist(Ozone)
hist(Temp, col = 'cyan')

##Single box plot and stats

boxplot(Ozone, col = '#e00720')
boxplot(Ozone)$stats
boxplot(Ozone)$out

#Multiple box plots
boxplot(df)

#Multiple graphs in one canvas

par(mfrow = c(2,2), mar = c(2,2,2,2))
plot(Ozone, Temp, main = 'Scatterplot', pch = 19, col = 'red')
hist(Ozone, col = 'green')
boxplot(Ozone, col = 'blue')
plot(Ozone, Solar.R, col = 'cyan')


boxplot(Ozone, horizontal = T)


#Standard Deviation
sd(Temp)
mean(Temp)

#Variance
var(Temp)
median(Temp)
max(Temp)
min(Temp)