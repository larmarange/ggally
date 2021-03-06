% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggnostic.R
\name{ggally_nostic_resid}
\alias{ggally_nostic_resid}
\title{\code{\link{ggnostic}} residuals}
\usage{
ggally_nostic_resid(
  data,
  mapping,
  ...,
  linePosition = 0,
  lineColor = brew_colors("grey"),
  lineSize = 0.5,
  lineAlpha = 1,
  lineType = 1,
  lineConfColor = brew_colors("grey"),
  lineConfSize = lineSize,
  lineConfAlpha = lineAlpha,
  lineConfType = 2,
  pVal = c(0.025, 0.975),
  sigma = attr(data, "broom_glance")$sigma,
  se = TRUE,
  method = "auto",
  formula = y ~ x
)
}
\arguments{
\item{data, mapping, ...}{parameters supplied to \code{\link{ggally_nostic_line}}}

\item{linePosition, lineColor, lineSize, lineAlpha, lineType}{parameters supplied to
\code{\link[ggplot2:geom_path]{ggplot2::geom_line()}}}

\item{lineConfColor, lineConfSize, lineConfAlpha, lineConfType}{parameters supplied to the
confidence interval lines}

\item{pVal}{percentiles of a N(0, sigma) distribution to be drawn}

\item{sigma}{sigma value for the \code{pVal} percentiles}

\item{se}{boolean to determine if the confidence intervals should be displayed}

\item{method, formula}{parameters supplied to \code{\link[ggplot2:geom_smooth]{ggplot2::geom_smooth()}}.
Defaults to \code{"auto"} and \code{"y ~ x"}}
}
\value{
\pkg{ggplot2} plot object
}
\description{
If non-null \code{pVal} and \code{sigma} values are given, confidence interval lines will be added to the plot at the specified \code{pVal} percentiles of a N(0, sigma) distribution.
}
\examples{
# Small function to display plots only if it's interactive
p_ <- GGally::print_if_interactive

dt <- broomify(stats::lm(mpg ~ wt + qsec + am, data = mtcars))
p_(ggally_nostic_resid(dt, ggplot2::aes(wt, .resid)))
}
\seealso{
\code{stats::\link[stats]{residuals}}
}
