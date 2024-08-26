library(ggplot2)

ggplot(mtcars, aes(x = as.factor(gear), y = hp, shape = as.factor(gear), fill = as.factor(gear)))+
  geom_boxplot(outlier.colour = "red", outlier.size = 2)+
  scale_shape_manual(values = c(16, 17, 18))+
  scale_fill_manual(values = c("skyblue", "lightgreen", "lightcoral"))+
  labs(title = "Box Plot of Horsepower by Number of Gears",
       x = "Number of Gears",
       y = "Horsepower(hp)")+
  theme_minimal()+
  theme(legend.title = element_blank())
  

  