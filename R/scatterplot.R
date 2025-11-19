#' @title Scatter plot for continuous variables
#'
#' @description
#' This function enables a quick way to generate a scatter plot for two continuous numerical variables in the dataset to check for any association between them
#'
#' @import ggplot2
#' @import rlang
#'
#' @param data is the data frame whose columns you wish to plot
#' @param var_x is an integer (int) or double floating-point (dbl) value for the x-axis
#' @param var_y an integer (int) or double floating-point (dbl) value for the y-axis
#' @param na.rm logical argument, whether or not to remove the NAs, default setting is to remove the NAs (na.rm = TRUE)
#' @return the scatter plot object as a ggplot
#'
#' @examples
#' example_data_1 <- data.frame(
#'                   hours_studied = c(1, 2, 3, 4, 5, 6, 7, 8),
#'                   exam_score = c(55, 60, 63, 70, 75, 82, 88, 91))
#' scatter_plot(example_data_1, hours_studied, exam_score)
#'
#' @export
scatter_plot <- function (data, var_x, var_y, na.rm = TRUE){
  plot <- ggplot(data = data, aes(x = {{var_x}}, y = {{var_y}}))+
    geom_point(alpha = 0.4)+
    theme_minimal()

  return(plot)
}
