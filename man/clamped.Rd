% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fractal-clamped.R
\name{clamped}
\alias{clamped}
\title{Clamped fractal}
\usage{
clamped(base, new, strength, min = 0, max = Inf, ...)
}
\arguments{
\item{base}{The prior values to modify}

\item{new}{The new values to modify \code{base} with}

\item{strength}{A value to modify \code{new} with before applying it to \code{base}}

\item{min, max}{The upper and lower bounds of the noise values}

\item{...}{ignored}
}
\description{
This fractal is a slight variation of \code{\link[=fbm]{fbm()}} fractal. Before adding the new
octave to the cumulated values it will clamp it between a minimum and maximum
value. This function is intended to be used in conjunction with \code{\link[=fracture]{fracture()}}
}
\examples{
grid <- long_grid(seq(1, 10, length.out = 1000), seq(1, 10, length.out = 1000))

grid$simplex <- fracture(gen_simplex, clamped, octaves = 8, x = grid$x,
                         y = grid$y)
plot(grid, simplex)

}
\seealso{
Other Fractal functions: 
\code{\link{billow}()},
\code{\link{fbm}()},
\code{\link{ridged}()}
}
\concept{Fractal functions}
