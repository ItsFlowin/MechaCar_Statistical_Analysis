# import library
library(tidyverse)

#import mechacar data
mechCarData <- read_csv("Resources/MechaCar_mpg.csv")

# generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechCarData)

# generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechCarData))

# import suspension coil data
suspension_coil_data <- read_csv("Resources/Suspension_Coil.csv")

#create total summary table
total_sum <- suspension_coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# create lot summary table
lot_sum <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Suspension Coil T-Test with mean of 1500
t.test(suspension_coil_data$PSI, mu=1500)

# Create subset for lot 1
lot1 <- subset(suspension_coil_data, Manufacturing_Lot=='Lot1')

# T-Test on lot 1 with mean of 1500
t.test(x=lot1$PSI, mu=1500)

# Create subset for lot 2
lot2 <- subset(suspension_coil_data, Manufacturing_Lot=='Lot2')

# T-Test for lot 2 with mean of 1500
t.test(x=lot2$PSI, mu=1500)

# Create subset for lot 3
lot3 <- subset(suspension_coil_data, Manufacturing_Lot=='Lot3')

# T-Test for lot 3 with mean of 1500
t.test(x=lot3$PSI, mu=1500)