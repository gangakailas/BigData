data(mtcars)

cyl_am_table <- table(mtcars$cyl, mtcars$am)

cyl_am_table <- t(cyl_am_table)

bp <- barplot(cyl_am_table,
              beside = TRUE,                        
              col = c("lightblue", "lightgreen"),           
              ylab = "Frequency",                         
              main = "Number of Cylinders by Transmission Type", 
              ylim = c(0, max(cyl_am_table) + 2),           
              axes = FALSE,                                 
              space = c(0, 0.5),                            
              names.arg = NULL)                             

axis(1, at = colMeans(bp), labels = c("4", "6", "8"), tick = TRUE)

axis(2)

legend("top", inset = c(0, -0.15), legend = c("Automatic", "Manual"), 
       fill = c("lightblue", "lightgreen"), xpd = TRUE, horiz = TRUE, bty = "n")

