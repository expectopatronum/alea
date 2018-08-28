Comparison of available dice packages
================
Verena Haunschmid
August 28, 2018

Available packages
------------------

Besides `alea` other packages related to casting dice are available. In case you are looking for functionality which is not provided by `alea`, this list gives you an overview over the packages I found and the description they provided:

-   [dice](https://github.com/cran/dice): Calculate probabilities of various dice-rolling events
-   [Rdice](https://github.com/gennaro-tedesco/Rdice): R package to simulate dice rolls, combinatorical and best choice problems.
-   [diceSyntax](https://github.com/oganm/diceSyntax): dice roller with standard syntax

This document shows a few of the use cases where another package might be more suitable for you.

### dice

``` r
library(dice)
```

The package `dice` is a package for calculating probabilities of various dice-rolling events, so this is something completely different from what `alea` is doing. The package consists of two functions: (a) `getEventProb()` and (b) `getSumProbs()`. The package is not very well documented and the functionality of `getEventProb()` was not immediately clear to me. So I try to explain it in more detail.

The first three examples are taken from the manual of the package.

``` r
getEventProb(nrolls = 6,
             ndicePerRoll = 1,
             nsidesPerDie = 4,
             eventList = list(4, 3, c(1,2)),
             orderMatters = FALSE)
```

    ## [1] 0.6445312

``` r
getEventProb(nrolls = 3,
             ndicePerRoll = 2,
             nsidesPerDie = 6,
             eventList = list(10, 4, c(2:6, 8:12)),
             orderMatters = TRUE)
```

    ## [1] 0.005787037

The function `getSumProbs()` is more straightforward.

``` r
getSumProbs(ndicePerRoll = 5,
            nsidesPerDie = 6,
            nkept = 3,
            dropLowest = TRUE)
```

    ## $probabilities
    ##       Sum  Probability Ways to Roll
    ##  [1,]   3 0.0001286008            1
    ##  [2,]   4 0.0006430041            5
    ##  [3,]   5 0.0019290123           15
    ##  [4,]   6 0.0052726337           41
    ##  [5,]   7 0.0115740741           90
    ##  [6,]   8 0.0218621399          170
    ##  [7,]   9 0.0380658436          296
    ##  [8,]  10 0.0604423868          470
    ##  [9,]  11 0.0855195473          665
    ## [10,]  12 0.1132973251          881
    ## [11,]  13 0.1356738683         1055
    ## [12,]  14 0.1485339506         1155
    ## [13,]  15 0.1428755144         1111
    ## [14,]  16 0.1202417695          935
    ## [15,]  17 0.0784465021          610
    ## [16,]  18 0.0354938272          276
    ## 
    ## $average
    ## [1] 13.43017

For better understanding, let me compute the probabilities of a more commonly used example (e.g., for teaching). Casting a 6-sided dice for two times.

``` r
probs <- getSumProbs(ndicePerRoll = 2,
            nsidesPerDie = 6,
            nkept = 2)
probs <- data.frame(probs$probabilities)
ggplot(probs) + geom_col(aes(x=Sum,  y=Ways.to.Roll)) + scale_x_discrete(limits=probs$Sum)
```

![](package_comparison_files/figure-markdown_github/dice5-1.png)

### Rdice

The package `Rdice` contains a set of function that can do similar things as `alea`.

``` r
library(Rdice)
```

The core function seems to be `dice.roll()`. It produced a lot of output in a complicated list structure which does not make it very useful for other applications.

The following example is taken from the help page of the function an casts 3 6-sided dice 5 times each.

``` r
dice.roll(faces = 6, dice = 3, rolls = 5)
```

    ## Call:
    ## dice.roll(faces = 6, dice = 3, rolls = 5)
    ## 
    ##  Results after 5 rolls of 3 dice:
    ##    die_1 die_2 die_3
    ## 1:     1     2     2
    ## 2:     3     1     6
    ## 3:     2     5     4
    ## 4:     5     6     3
    ## 5:     3     2     2
    ## 
    ##  Frequency table for each occurrency:
    ##    die_1 die_2 die_3 N freq
    ## 1:     1     2     2 1  0.2
    ## 2:     3     2     2 1  0.2
    ## 3:     5     6     3 1  0.2
    ## 4:     2     5     4 1  0.2
    ## 5:     3     1     6 1  0.2
    ## 
    ##  Frequency table of the sums:
    ##    sum N freq cum_sum
    ## 1:   5 1  0.2     0.2
    ## 2:   7 1  0.2     0.4
    ## 3:  10 1  0.2     0.6
    ## 4:  11 1  0.2     0.8
    ## 5:  14 1  0.2     1.0
    ## 
    ##  Expectation value: 9.4

The package also contains three datasets of non-transitive dice, i.e. [Efron dice](http://mathworld.wolfram.com/EfronsDice.html) (`efron`), [Miwin dice](https://en.wikipedia.org/wiki/Miwin%27s_dice) (`miwin`) and [Oskar](https://en.wikipedia.org/wiki/Nontransitive_dice#Oskar_dice) (`oskar`).

The package contains a [vignette](https://github.com/gennaro-tedesco/Rdice/blob/master/vignettes/Rdice-vignette.pdf) with more detailed explanations.

### diceSyntax

The package `diceSyntax` contains several functions but only documentation for `roll`.

The package is only available on github.

``` r
devtools::install_github("oganm/diceSyntax")
```

``` r
library(diceSyntax)
```

The interesting part of this package is that you can pass dice events like `4d6` in order to cast 4 6-sided dice.

``` r
roll("4d6")
```

    ## [1] "Rolls: [ *1* *1* 3 3 ]"

    ## [1] 8

More examples (e.g., keep highest/lowest 3, ...) can be found in the [README of diceSyntax](https://github.com/oganm/diceSyntax).
