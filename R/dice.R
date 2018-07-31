cast_dice <- function(sides = 1:6, n_tries = 1) {
  return(sample(sides, n_tries, TRUE))
}

d4 <- function(n_tries = 1) {
  return(cast_dice(4, n_tries))
}

d6 <- function(n_tries = 1) {
  return(cast_dice(6, n_tries))
}

d8 <- function(n_tries = 1) {
  return(cast_dice(8, n_tries))
}

d10 <- function(n_tries = 1) {
  return(cast_dice(10, n_tries))
}

d20 <- function(n_tries = 1) {
  return(cast_dice(20, n_tries))
}

d100 <- function(n_tries = 1) {
  return(cast_dice(100, n_tries))
}

sicherman <- function() {
  s1 <- cast_dice(c(1, 2, 2, 3, 3, 4))
  s2 <- cast_dice(c(1, 3, 4, 5, 6, 8))
  return(c(s1, s2))
}
