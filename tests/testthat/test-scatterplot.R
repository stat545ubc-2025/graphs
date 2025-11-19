library(datateachr)

test_that("the function scatter_plot outputs a ggplot",{
  test_plot_num1 <- scatter_plot(datateachr::cancer_sample,area_mean, radius_mean, na.rm = TRUE)
  expect_s3_class(test_plot_num1, "ggplot")
})

test_that("the function uses the correct data frame",{
  test_plot_num2 <- scatter_plot(datateachr::cancer_sample,area_mean, perimeter_mean, na.rm = TRUE)
  expect_equal(test_plot_num2$data,cancer_sample)
})

test_that("the function uses the correct x and y labels",{
  test_plot_num3 <- scatter_plot(datateachr::cancer_sample,concavity_mean, symmetry_mean, na.rm = TRUE)
  expect_equal(rlang::as_name(test_plot_num3$mapping$x), "concavity_mean")
  expect_equal(rlang::as_name(test_plot_num3$mapping$y), "symmetry_mean")
})
