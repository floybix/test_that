\name{JUnitReporter}
\alias{JUnitReporter}
\alias{JUnitReporter-class}
\title{Test reporter: summary of errors in jUnit XML format.}
\description{
  This reporter includes detailed results about each test
  and summaries, written to a file (or stdout) in jUnit XML
  format. This can be read by the Jenkins Continuous
  Integration System to report on a dashboard etc. Requires
  the XML package.
}
\details{
  This works for \code{\link{expect_that}} but not for the
  wrappers like \code{\link{expect_equal}} etc.

  To fit into the jUnit structure, context() becomes the
  \code{<testsuite>} name as well as the base of the
  \code{<testcase> classname}. The test_that() name becomes
  the rest of the \code{<testcase> classname}. The deparsed
  expect_that() call becomes the \code{<testcase>} name. On
  failure, the message goes into the \code{<failure>} node
  message argument (first line only) and into its text
  content (full message).

  Execution time and some other details are also recorded.

  References for the jUnit XML format:
  http://ant.1045680.n5.nabble.com/schema-for-junit-xml-output-td1375274.html
  http://windyroad.org/dl/Open%20Source/JUnit.xsd

  Output drawn from the SummaryReporter is printed to the
  standard error stream during execution.
}
\examples{
if (require("XML")) {
  test_package("testthat", reporter = JUnitReporter$new("testjunit.xml"))
}
}
\keyword{debugging}

