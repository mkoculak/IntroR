library(datasets)

dataset <- iris

dataset <- subset(dataset, Sepal.Width < 4)
dataset <- subset(dataset, Sepal.Length != 5.7)
dataset$Petal.Width[dataset$Petal.Width == 0.4] <- 0.5

par(mfrow=c(2,2))
plot(x = dataset$Sepal.Length, y = dataset$Sepal.Width, col = dataset$Species, pch = 16,
     xlab = "Sepal length", ylab = "Sepal width", main = "IRIS Dataset visualisation")
plot(x = density(dataset$Petal.Length), col = 'gold', main = "Petal length distribution")
polygon(x = density(dataset$Petal.Length), col = 'gold', main = "Petal length distribution")
hist(x = dataset$Petal.Width, col = dataset$Sepal.Length, breaks = 20, main = "Petal width distribution")
plot(dataset$Sepal.Length ~ dataset$Species, main = "Mean sepal length", xlab = 'Sepal length', ylab = "Species")

results <- aov(Sepal.Length ~ Species, data=dataset)
print(summary(results))
print(TukeyHSD(results))
