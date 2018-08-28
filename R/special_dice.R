#' Cast a Sicherman dice
#'
#' @param n_tries how often the dice should be cast.
#' @param sum whether the result of casting the dice should be summed.
#' @export
sicherman <- function(n_tries=1, sum = FALSE) {
  s1 <- .sicherman1(n_tries)
  s2 <- .sicherman2(n_tries)
  result <- s1 + s2 # sum result of each cast
  if (sum) {
    return(sum(result))
  }
  return(result)
}

.sicherman1 <- function(n_tries = 1) {
  s1 <- cast_dice(c(1, 2, 2, 3, 3, 4), n_tries)
  return(s1)
}

.sicherman2 <- function(n_tries = 1) {
  s2 <- cast_dice(c(1, 3, 4, 5, 6, 8), n_tries)
  return(s2)
}
