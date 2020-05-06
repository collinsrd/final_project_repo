my_theme <- theme_minimal() +
  theme(
    axis.text = element_text(size = 10),
    axis.title.y = element_text(vjust = 3), 
    axis.title.x = element_blank(),
    axis.line.x = element_line(color = "gray70"), 
    panel.grid.major.x = element_blank(), 
    panel.grid.minor.x = element_blank(), 
    panel.grid.minor.y = element_blank(), 
    axis.ticks.x = element_line(),
    panel.grid.major.y = element_line(color = "gray80",
                                      linetype = "dotted"))