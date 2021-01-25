# MechaCar_Statistical_Analysis

## Overview
The purpose of this analysis is to use statistics to offer insights to the MechaCar manufacturing team. All the analysis was done using the programming language R.

## Linear Regression to Predict MPG

First I took the miles per gallon dataset provided by AutosRUs regarding their newest prototype vehicle MechaCar and imported it into RStudio. From there I performed multiple linear regressions to determine if it was able to predict the MechaCars mpg using all the independent variables contained within the dataset. There were 3 main questions that I was looking for the answer to:

1.) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

2.) Is the slope of the linear model considered to be zero? Why or why not?

3.) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

<p align="center"><img src = "https://github.com/ItsFlowin/pics/blob/main/MechcarData%20Summary.png"></p>

Looking at the results displayed above we can answer all 3 questions.

1.) The two variables that provided a non-random amount of variance to the dataset were the vehicle length and the ground clearance level of the vehicle. Both of these factors had small p-values meaning that they had high levels of significance.

2.) The slope of the linear model is not considered to be zero because the linear regression shows that some of the independent variables had a significant effect on the dependent variables.

3.) This model could be considered an effective prediction of mpg because the r-squared value of 0.7149 means that 71 out of 100 attempts this model would approximately predict the mpg of the MechaCar.

## Summary Statistics on Suspension Coils

I loaded the suspension coil data provided regarding the MechaCar and created two summary tables to look at the mean, median, variance, and standard deviation.

<p align="center"> <img src = "https://github.com/ItsFlowin/pics/blob/main/total_summary_table.png"><br>All Lots</p>

<p align="center"> <img src = "https://github.com/ItsFlowin/pics/blob/main/lot_summary_table.png"><br>Separated by Manufacturing Lots</p>

Looking at the results above the total variance in all of the manufacturing lots is 62.29 which is well below the design specifications of 100 PSI. However, when taking a closer look at the lots individually, lot 3 is shown to have a variance of 170.29 which is well above the design specification.

## T-Tests on Suspension Coils

The next test was to determine if the suspension coils on all individual and combined manufacturing lots were statistically different from the population mean of 1500 PSI.

<p align="center"><img src = "https://github.com/ItsFlowin/pics/blob/main/t-test.png"><br>All Lot T-Test</p>
<p align="center"><img src = "https://github.com/ItsFlowin/pics/blob/main/lot1%20t-test.png"><br>Lot 1 T-Test</p>
<p align="center"><img src = "https://github.com/ItsFlowin/pics/blob/main/Lot%202%20t-test.png"><br>Lot 2 T-Test</p>
<p align="center"><img src = "https://github.com/ItsFlowin/pics/blob/main/Lot3%20T-Test.png"><br>Lot 3 T-Test</p>

Looking at the results above, the significance level was 95% meaning that 95% of the time the test results would be true. The p-values of the combined lots, lot 1, and lot 2 are above 0.05 meaning that there is no statistical difference between these groups and the population mean. On lot 3 the p-value was 0.04 so I can reject the null hypothesis and conclude that lot 3 is statistically different from the population mean.

## Study Design: MechaCar vs Competition

To compare the Mechacar prototype against its competition, we will perform statistical analysis based on the following factors:

1.) Fuel Efficiency
2.) Acceleration Rate
3.) Weight to Power

In this analysis the null hypothesis would be that the MechaCar prototype and other vehicles in the same class from its competitors all have statistically similar performance. To perform this analysis, the ANOVA test would be the most fitting as this test is used to compare the mans of a continuous numerical value across a number of groups.

To actually perform the analysis the data from MechaCar and all of its competitors is needed to be gathered into one single dataframe where each metric is its own column.

