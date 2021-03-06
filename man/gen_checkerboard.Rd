% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pattern-checkerboard.R
\name{gen_checkerboard}
\alias{gen_checkerboard}
\title{Generate a checkerboard pattern}
\usage{
gen_checkerboard(x, y = NULL, z = NULL, t = NULL, frequency = 1, ...)
}
\arguments{
\item{x, y, z, t}{The coordinates to get pattern from}

\item{frequency}{The frequency of the generator}

\item{...}{ignored}
}
\value{
A numeric vector
}
\description{
This generator supplies 0 or 1 value depending on the provided coordinates
position on a checkerboard. The \code{frequency} determines the number of squares
per unit.
}
\examples{
grid <- long_grid(seq(1, 10, length.out = 1000), seq(1, 10, length.out = 1000))
grid$chess <- gen_checkerboard(grid$x, grid$y)

plot(grid, chess)

}
\seealso{
Other Pattern generators: 
\code{\link{gen_spheres}()},
\code{\link{gen_waves}()}
}
\concept{Pattern generators}
