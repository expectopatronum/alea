cast_dice <- function(sides = 1:6, n_tries = 1) {
  return(sample(sides, n_tries, TRUE))
}
