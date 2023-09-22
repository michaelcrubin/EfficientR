library(devtools)
library(usethis)
library(here)
library(renv)

#usethis::use_git_remote("origin", url = NULL, overwrite = TRUE)
# use_github()
# use_github(organisation = "ODAPES", private = TRUE)


#' A Time-Consuming Function
#'
#' This function is intentionally designed to run slowly for testing or demonstration purposes. It uses a loop to waste time.
#' with 1 Bio take about 20s
#'
#' @return The message "Done" indicating completion.
#' @param n Number of iterations
#' @examples
#' slow_function()
#'
#' @export
slow_function <- function(n) {
  for (i in 1:n) {
    # Wasting time with a loop
    j <- i^2
  }
  return("Done")
}


#' ANOTHER Time-Consuming Function
#'
#' This function is intentionally designed to run slowly for testing or demonstration purposes. It uses a loop to waste time.
#' with 1 Bio take about 20s
#'
#' @return The message "Done" indicating completion.
#' @param n Number of iterations
#' @examples
#' slow_function_NOEXP()
slow_function_NOEXP <- function(n) {
  for (i in 1:n) {
    # Wasting time with a loop
    j <- i^2
  }
  return("Done")
}


#' COMPILED Time-Consuming Function
#'
#' This function is intentionally designed to run slowly for testing or demonstration purposes. It uses a loop to waste time.
#' with 1 Bio take about 20s
#'
#' @return The message "Done" indicating completion.
#' @param n Number of iterations
#'
#' @export
compiled_slow_function <- compiler::cmpfun(slow_function_NOEXP)


