# Finn Tomasula Martin
# COSC-4557
# Warmup Exercise
# This file contains code to build a linear classification model on the winequality-red.csv data

# Clear environment before each run
rm(list = ls())

# Load in the data
wine <- read.csv("winequality-red.csv", sep=";")

# Add a new column to classify wine as good or bad based on a cutoff
quality_cutoff <- mean(wine$quality)
wine$quality.bin <- ifelse(wine$quality >= quality_cutoff, "good", "bad")
wine$quality.bin <- factor(wine$quality.bin)

# Compute the model
model <- glm(quality.bin ~ .-quality, data=wine, family=binomial)
summary(model)

# Construct a confusion matrix to evaluate fit
probs <- predict(model, type = "response")
pred <- rep("bad", 1599)
pred[probs > 0.5] <- "good"
confusuion <- table(pred, wine$quality.bin)





