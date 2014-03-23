#packages to install for this repository
install.packages("devtools")
require(devtools)

pkgs <- c("slidify", "slidifyLibraries", "rCharts")
install_github(pkgs, 'ramnathv', ref = 'dev')

require(slidify)
require(slidifyLibraries)
require(rCharts)


#look at our data for gender, age, salary
data <- read.csv("data.csv", header = TRUE, sep = ",")
mean(data$age)
mean(data$salary)

data_male <- subset(as.data.frame(data), gender == "m")
mean(data_male$age)
mean(data_male$salary)

data_female <- subset(as.data.frame(data), gender == "f")
mean(data_female$age)
mean(data_female$salary)

scatterPlot = hPlot(x = "age", y = "salary", groups = c("gender"), data = data, type = "scatter")
scatterPlot
