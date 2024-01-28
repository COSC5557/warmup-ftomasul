# Finn Tomasula Martin
# COSC-4557
# Warmup Exercise
# This file contains code to build a linear classification model on the winequality-red.csv data

# Clear environment before each run
rm(list = ls())

# Load in the data
wine <- read.csv("winequality-red.csv", sep=";")