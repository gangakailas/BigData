data(iris)
plot(iris$Sepal.Length, iris$Petal.Length,
     xlab = "Sepal Length(cm)",
     ylab = "Petal Length(cm)",
     main = "Scatter Plot of Sepal Length vs Petal Length",
     col = "blue",
     pch = 19)

png("scatterplot.png" ,width = 1920,height = 1080,res = 300)

plot(iris$Sepal.Length, iris$Petal.Length,
     xlab = "Sepal Length(cm)",
     ylab = "Petal Length(cm)",
     main = "Scatter Plot of Sepal Length vs Petal Length",
     col = "blue",
     pch = 19)

dev.off()