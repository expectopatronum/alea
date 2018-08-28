#' Cast a dice
#'
#' @param sides can either be an integer value (maximum value on a standard dice) or a vector of sides.
#' @param n_tries how often the dice should be cast.
#' @param sum whether the result of casting the dice should be summed.
#' @examples
#' cast_dice()
#' cast_dice(5)
#' cast_dice(1:5) # same as example above
#' cast_dice(20, 3)
#' cast_dice(20, 3, TRUE)
#' @export
cast_dice <- function(sides = 1:6, n_tries = 1, sum = FALSE) {
  result <- sample(sides, n_tries, TRUE)
  if (sum) {
    return(sum(result))
  }
  return(result)
}
