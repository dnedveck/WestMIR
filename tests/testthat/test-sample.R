
context("Description of tests in this file")

test_that("These tests should succeeed.", {
  # Build objects to be tested here
  object1 <- log(5, base = 10)
  object2 <- log10(5)
  expect_equivalent(object1, object2)
  expect_warning(log(-2))
  expect_warning(1:3 + 1:2)
})

test_that("These tests will fail.", {
  # Build objects to be tested here
  object1 <- log(10, 5)
  object2 <- log10(5)
  expect_equivalent(object1, object2)
  expect_error(log(2))
  expect_warning(1:3 + 1:6)
})
