data(mtcars)
<<<<<<< HEAD
=======

>>>>>>> cycle
plot(mtcars$disp, mtcars$mpg,
     col = as.factor(mtcars$cyl),
     xlab = "Displacement (cu.in.)",
     ylab = "Miles Per Gallon(mpg)",
     main = "Scatterplot of Displacement vs MPG",
     pch = 19)

lines(lowess(mtcars$disp, mtcars$mpg), col = "black", lwd = 2)
<<<<<<< HEAD
=======

>>>>>>> cycle
legend("topright", legend = levels(as.factor(mtcars$cyl)),
       col = 1:length(levels(as.factor(mtcars$cyl))),
       pch = 19,
       title = "Cylinders")