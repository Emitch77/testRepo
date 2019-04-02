require(ggplot2)
data(diamonds)
head(diamonds)
#
# Base Histograms (7.1.1)
hist(diamonds$carat, main = "Carat Histogram", xlab = "Carat")
#
#Base Scatterplots (7.1.2)
plot(price ~ carat, data = diamonds)
plot(diamonds$carat, diamonds$price)
#
#Base Boxplots (7.1.3)
boxplot(diamonds$carat)