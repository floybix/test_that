context("Basic tests")

test_that("logical tests act as expected", {
  expect_that(TRUE, is_true())
  expect_that(FALSE, is_false())
})

test_that("logical tests ignore attributes", {
  expect_that(c(a = TRUE), is_true())
  expect_that(c(a = FALSE), is_false())
})

test_that("equality holds", {
  expect_that(5, equals(5))
  expect_that(10, is_identical_to(10))
})

test_that("can't access variables from other tests 2", {
  a <- 10
})

test_that("can't access variables from other tests 1", {
  expect_that(exists("a"), is_false())
})

## does not actually test this, but can see result with jUnit
test_that("info argument distinguishes cases in a loop", {
  for (var in c("aaa", "bbb")) {
    expect_that(toupper(var), matches("[AB]"), info = var)
  }
})
