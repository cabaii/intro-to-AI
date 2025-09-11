# Author: Abai Ikwechegh, Date: Sep 10, 2025 Purpose: Test simple linear progression with mpg 
# Get some dummy data 
cars <- mtcars 

# Scatter plot for training data 
scatter.smooth(x=cars$gear, y=cars$mpg, main="Gear VS MPG")

# for Calculating the correlation value between mpg and gear
cor(cars$gear, cars$mpg)

# Split training and testing data for regression 
training_data <- cars[1:16, ]
test_data <- cars[17:32, ]

# Building a regression Model
regression_results <- lm(mpg ~ gear, data=training_data)

# Predict regression function on test data
prediction_results <- predict(regression_results, test_data)

# Results of prediction 
actual_prediction_value <- data.frame(cbind(actuals = test_data$mpg, predicteds = prediction_results))

#                   actuals predicteds
# Chrysler Imperial    14.7   15.80000
# Fiat 128             32.4   21.28571
# Honda Civic          30.4   21.28571
# Toyota Corolla       33.9   21.28571
# Toyota Corona        21.5   15.80000
# Dodge Challenger     15.5   15.80000
# AMC Javelin          15.2   15.80000
# Camaro Z28           13.3   15.80000
# Pontiac Firebird     19.2   15.80000
# Fiat X1-9            27.3   21.28571
# Porsche 914-2        26.0   26.77143
# Lotus Europa         30.4   26.77143
# Ford Pantera L       15.8   26.77143
# Ferrari Dino         19.7   26.77143
# Maserati Bora        15.0   26.77143
# Volvo 142E           21.4   21.28571