% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gg-plots.R
\name{remove_color_unless_equal}
\alias{remove_color_unless_equal}
\title{Remove colour mapping unless found in select mapping keys}
\usage{
remove_color_unless_equal(mapping, to = c("x", "y"))
}
\arguments{
\item{mapping}{output of \code{ggplot2::\link[ggplot2]{aes}(...)}}

\item{to}{set of mapping keys to check}
}
\value{
Aes mapping with colour mapping kept only if found in selected mapping keys.
}
\description{
Remove colour mapping unless found in select mapping keys
}
\examples{
mapping <- aes(x = sex, y = age, colour = sex)

mapping <- aes(x = sex, y = age, colour = region)
remove_color_unless_equal(mapping)
}
