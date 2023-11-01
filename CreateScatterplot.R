# In this script, we're going to create scatterplots using ggplot()

# First, we need tidyverse installed. Then we can use it by using library().
library(tidyverse)

# A data frame from tidyverse package. # This data frame shows the 
# MPG (Miles per Gallon) of cars and has 234 rows.
mpg
?mpg

# To see the whole data
print(mpg, n=234)

# This is the base of our plot, we use the data from mpg data frame.
ggplot(data = mpg)

# Let's add something to our plot. Here, we add displ on the x axis
# and hwy on the y axis
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

# We set the color based on the input on "drv" columns which has 3 different inputs.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = drv))

# We set the color based on the input on "class" columns.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# We set the shape based on the input on "class" columns.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

# We set the color to red.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "red")

# We builds a new chart for each level of a categorical variable
# we use facet_wrap() here
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = cty)) + 
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = drv, y = cyl, color = class))

# We use facet_grid() here
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) + 
  geom_line(mapping = aes(x = displ, y = hwy, linetype = drv))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg, mapping = aes(x = displ, y = cty)) + 
  geom_point() + 
  geom_smooth()


ggplot(data = mpg, mapping = aes(x = displ, y = cty)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth(data = filter(mpg, class == "2seater"), se = FALSE)
#------------------------
diamonds
?diamonds

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, colour = cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")

