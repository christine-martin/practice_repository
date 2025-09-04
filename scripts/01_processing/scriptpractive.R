#build graph

#load packages
library(ggplot2)
library(EVR628tools)


#load data
data("data_heatwaves")

#build a plot
ggplot(data = data_heatwaves,
            mapping = aes(x = year, y = temp_mean,
                          group = paste(fishery, eu_rnpa))) +
  geom_line()

p <- ggplot(data = data_heatwaves,
            mapping = aes(x = year, y = temp_mean,
                          group = paste(fishery, eu_rnpa))) +
  geom_line()


ggsave(plot = p,
       filename = "results/img/my_first_plot.png")
