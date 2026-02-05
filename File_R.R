library(dplyr)
library(ggplot2)

plot_data <- mtcars %>%
  mutate(cyl = as.factor(cyl)) %>% 
  group_by(cyl) %>%
  summarise(avg_hp = mean(hp))

ggplot(plot_data, aes(x = cyl, y = avg_hp, fill = cyl)) +
  geom_col() +
  labs(
    title = "Average Horsepower by Cylinder Count",
    x = "Number of Cylinders",
    y = "Average HP",
    fill = "Cylinders"
  ) +
  theme_minimal()

print(plot_data)