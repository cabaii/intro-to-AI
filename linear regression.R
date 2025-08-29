
# Author: Abai Ikwechegh; Date: August 28, 2025; Purpose: Test simple linear regression

#Get some dummy dataset
cars <- mtcars

#print the first 5 
head(cars)

#Scatter plot used for training data
scatter.smooth(x=cars$mpg, y=cars$disp, main="SpeedVsDistance")