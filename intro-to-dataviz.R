install.packages("devtools")
require(devtools)

pkgs <- c("slidify", "slidifyLibraries", "rCharts")
install_github(pkgs, 'ramnathv', ref = 'dev')

require(slidify)
require(slidifyLibraries)
require(rCharts)


hair_eye_male <- subset(as.data.frame(HairEyeColor), Sex == "Male")
n2 <- nPlot(Freq ~ Hair, group = 'Eye', data = hair_eye_male, type = 'multiBarChart')

n2