# Load required libraries
library(dplyr)
library(ggplot2)

# Import the mtcars dataset
data(mtcars)

# Use dplyr to create a simple transformed dataset
mtcars_clean <- mtcars %>%
  mutate(cyl = factor(cyl))  # treat cylinders as a categorical variable

# Create a simple scatter plot
ggplot(mtcars_clean, aes(x = hp, y = mpg, color = cyl)) +
  geom_point(size = 3) +
  labs(
    title = "Miles Per Gallon vs Horsepower",
    x = "Horsepower",
    y = "Miles Per Gallon",
    color = "Cylinders"
  ) +
  theme_minimal()
