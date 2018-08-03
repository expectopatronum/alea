sicherman <- function(sum = FALSE) {
  s1 <- cast_dice(c(1, 2, 2, 3, 3, 4))
  s2 <- cast_dice(c(1, 3, 4, 5, 6, 8))
  if (sum) {
    return(s1+s2)
  }
  return(c(s1, s2))
}
