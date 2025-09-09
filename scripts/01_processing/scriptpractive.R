#build graph

#load packages
library(ggplot2)
library(EVR628tools)


#load data
data("data_heatwaves")

#build a plot
ggplot(data = data_heatwaves,
            mapping = aes(x = year, y = temp_mean,
                          group = paste(fishery, eu_rnpa), colour = "purple")) +
  geom_line() +
  facet_wrap(~ fishery, ncol = 2, scales = "free_y")

p <- ggplot(data = data_heatwaves,
            mapping = aes(x = year, y = temp_mean,
                          group = paste(fishery, eu_rnpa), colour = "orange")) +
  geom_line()


ggsave(plot = p,
       filename = "results/img/my_first_plot.png")
