
library(ggplot2)

ggplot(mtcars, aes(x=mpg))+
  geom_histogram(binwidth = 2,
                 aes(fill = after_stat(count)),
                 color = "black",
                 alpha = 0.7)+
  scale_fill_gradient(low ="lightblue", high = "darkblue")+
  labs(title = "Mile per Miles per Gallons(mpg)",
       x = "Miles per Gallon",
       y = "Frequency")+
  theme_minimal()+
  geom_vline(aes(xintercept = mean(mpg)),
             color = "red", linetype = "dashed", size = 1)+
  annotate("text", x = mean(mtcars$mpg), y = 6,
           label = paste("Mean", round(mean(mtcars$mpg), 2)),
           color = "red")+
  geom_vline(aes(xintercept = mean(mpg) - sd(mpg)),
             color = "green", linetype = "dotted", size = 1)+
  geom_vline(aes(xintercept = mean(mpg) + sd(mpg)),
             color = "green", linetype = "dotted", size = 1)+
  annotate("text", x = mean(mtcars$mpg) - sd(mtcars$mpg), y = 5.5,
           label = paste("Mean - SD", round(mean(mtcars$mpg) - sd(mtcars$mpg), 2)),
           color = "green")+
  annotate("text", x = mean(mtcars$mpg) + sd(mtcars$mpg), y = 5.5,
           label = paste("Mean + SD", round(mean(mtcars$mpg) + sd(mtcars$mpg), 2)),
           color = "green")
  