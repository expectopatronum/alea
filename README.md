
<!-- README.md is generated from README.Rmd. Please edit that file -->
> ... iacta alea est
>
> -- <cite>[Gaius Julius Caesar](https://en.wikipedia.org/wiki/Alea_iacta_est)</cite>

alea
====

R package for casting dice, including dice for [Dungeons & Dragons](http://dnd.wizards.com/) and special dice like the [Sicherman dice](https://en.wikipedia.org/wiki/Sicherman_dice).

Overview
--------

`alea` consists of one main function `cast_dice()` with parameters for different situations (see below) and several dice like `d4()`, `d20()`, `sicherman()` which can be used without additional parameters. The interface for the main function is `cast_dice(sides = 1:6, n_tries = 1, sum = FALSE)`.

-   `sides`: can either be an integer value (maximum value on a standard dice) or a vector of sides. `6` and `1:6` both result in casting a 6-sided dice.
-   `n_tries`: how often the dice should be cast.
-   `sum`: whether the result of casting the dice should be summed.

Installation
------------

You can install alea from github with:

``` r
# install.packages("devtools")
devtools::install_github("expectopatronum/alea")
```

Load the package:

``` r
library(alea)
```

Other packages
--------------

Since casting dice is a rather important and easily programmed task, there exist a few other R package. I made a list of the ones I found and tried a few examples [here](misc/package_comparison.md).

Examples
--------

These examples show the usage of some of the dice in the package.

``` r
set.seed(24) # this seed was randomly chosen by casting a d60
```

``` r
cast_dice()
#> [1] 2
```

``` r
cast_dice(20, 3)
#> [1]  5 15 11
```

``` r
cast_dice(c(2, 4, 6, 8, 10))
#> [1] 8
```

``` r
d20()
#> [1] 19
```

``` r
d6(4, TRUE)
#> [1] 14
```
