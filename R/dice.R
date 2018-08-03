cast_dice <- function(sides = 1:6, n_tries = 1, sum = FALSE) {
  result <- sample(sides, n_tries, TRUE)
  if (sum) {
    return(sum(result))
  }
  return(result)
}
