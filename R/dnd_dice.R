#' Cast a D4
#'
#' @param n_tries how often the dice should be cast.
#' @param sum whether the result of casting the dice should be summed.
#' @export
d4 <- function(n_tries = 1, sum = FALSE) {
  return(cast_dice(4, n_tries, sum))
}

#' Cast a D6
#'
#' @param n_tries how often the dice should be cast.
#' @param sum whether the result of casting the dice should be summed.
#' @export
d6 <- function(n_tries = 1, sum = FALSE) {
  return(cast_dice(6, n_tries, sum))
}

#' Cast a D8
#'
#' @param n_tries how often the dice should be cast.
#' @param sum whether the result of casting the dice should be summed.
#' @export
d8 <- function(n_tries = 1, sum = FALSE) {
  return(cast_dice(8, n_tries, sum))
}

#' Cast a D10
#'
#' @param n_tries how often the dice should be cast.
#' @param sum whether the result of casting the dice should be summed.
#' @export
d10 <- function(n_tries = 1, sum = FALSE) {
  return(cast_dice(10, n_tries, sum))
}

#' Cast a D20
#'
#' @param n_tries how often the dice should be cast.
#' @param sum whether the result of casting the dice should be summed.
#' @export
d20 <- function(n_tries = 1, sum = FALSE) {
  return(cast_dice(20, n_tries, sum))
}

#' Cast a D100
#'
#' @param n_tries how often the dice should be cast.
#' @param sum whether the result of casting the dice should be summed.
#' @export
d100 <- function(n_tries = 1, sum = FALSE) {
  return(cast_dice(100, n_tries, sum))
}
