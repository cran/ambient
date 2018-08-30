<!-- README.md is generated from README.Rmd. Please edit that file -->
ambient <img src="man/figures/logo.png" align="right" />
========================================================

[![Travis-CI Build Status](https://travis-ci.org/thomasp85/ambient.svg?branch=master)](https://travis-ci.org/thomasp85/ambient) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/thomasp85/ambient?branch=master&svg=true)](https://ci.appveyor.com/project/thomasp85/ambient) [![CRAN\_Release\_Badge](http://www.r-pkg.org/badges/version-ago/ambient)](https://CRAN.R-project.org/package=ambient) [![CRAN\_Download\_Badge](http://cranlogs.r-pkg.org/badges/ambient)](https://CRAN.R-project.org/package=ambient)

`ambient` is a an R package that provides access to the [FastNoise](https://github.com/Auburns/FastNoise) C++ library for generating noise. As such it provides fast generation of perlin, value, cubic, and worley noise in 2 and 3 dimensions, as well as simplex and white noise in 2, 3, and 4 dimensions.

Most of the noise patterns can be generated as fractals as well with support for fbm, billow and rigid-multifractal, and can optionally be pertubed.

There's not much more to it. If you are in need of a noise generator `ambient` is your friend, if not you probably shouldn't care.

Installation
------------

For the time being `ambient` is only available on Github, and can be installed with `devtools`:

``` r
# install.packages('devtools')
devtools::install_github('thomasp85/ambient')
```

In the future the package will be available on CRAN as well.

Examples
--------

Following is a couple of examples of the noise patterns possible with `ambient`:

``` r
library(ambient)
plot_raster <- function(mat) {
  mat <- (mat - min(mat)) / diff(range(mat))
  plot(as.raster(mat))
}

# Simplex
plot_raster(noise_simplex(c(500, 500)))
```

![](man/figures/README-unnamed-chunk-3-1.png)

``` r

# Simplex - No fractality
plot_raster(noise_simplex(c(500, 500), fractal = 'none'))
```

![](man/figures/README-unnamed-chunk-3-2.png)

``` r

# Worley (cellular)
plot_raster(noise_worley(c(500, 500)))
```

![](man/figures/README-unnamed-chunk-3-3.png)

``` r

# Worley - with pertubation
plot_raster(noise_worley(c(500, 500), pertubation = 'normal', pertubation_amplitude = 40))
```

![](man/figures/README-unnamed-chunk-3-4.png)
