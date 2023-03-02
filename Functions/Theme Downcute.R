theme_downcute <- function(base_size = 21, base_family = "Montserrat", bg = "#ffffff", axis_emph = "xy", ...) {
  template_background <- ggplot2::element_rect(fill = bg, color = bg)
  
  result <- ggplot2::theme_grey(base_size = base_size, base_family = base_family) %+replace%
    theme(
      panel.background = template_background,
      plot.background = template_background,
      legend.background = template_background,
      legend.key = template_background,
      plot.caption = element_text(hjust = 1, vjust = 0, size = rel(.7)),
      axis.title.x = element_text(),
      strip.placement = "outside",
      strip.background = element_blank(),
      ...
    )
  
  if (axis_emph == "x") {
    result <- result +
      theme(
        panel.grid.major.x = element_line(linewidth = 0.1, color = "#ADADAD"),
        panel.grid.minor.x = element_line(linewidth = 0.1, color = "#ADADAD", linetype = "dotted")
      )
  } else if (axis_emph == "y") {
    result <- result +
      theme(
        panel.grid.major.y = element_line(linewidth = 0.1, color = "#ADADAD"),
        panel.grid.minor.y = element_line(linewidth = 0.1, color = "#ADADAD", linetype = "dotted")
      )
  } else if (axis_emph == "xy") {
    result <- result +
      theme(
        panel.grid.major.x = element_line(linewidth = 0.1, color = "#ADADAD"),
        panel.grid.minor.x = element_line(linewidth = 0.1, color = "#ADADAD", linetype = "dotted"),
        panel.grid.major.y = element_line(linewidth = 0.1, color = "#ADADAD"),
        panel.grid.minor.y = element_line(linewidth = 0.1, color = "#ADADAD", linetype = "dotted")
      )
  } else if (axis_emph == "" | is.null(axis_emph)) {
  } else {
    warning(paste("Unknow option to axis_emph", axis_emph, "\nDoing nothing"))
  }
  return(result)
}
