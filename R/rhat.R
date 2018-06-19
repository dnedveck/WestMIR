
#' Plot R-hat values
#'
#' `mcmc_rhat()` is a generic that plots R-hat values.
#'
#' @inheritParams bayesplot::mcmc_rhat
#' @inheritParams brms::rhat
#' @importFrom bayesplot mcmc_rhat
#' @importFrom brms rhat
#' @param object An object (either a vector of r-hat values
#'   or a "brmsfit" object"
#' @seealso [`bayesplot::mcmc_rhat()`]
#' @examples
#' 1 + 1
#' @export
mcmc_rhat <- function (object, ..., size = NULL)  {
  UseMethod("mcmc_rhat")
}

#' @export
mcmc_rhat.default <- function (object, ..., size = NULL)  {
  bayesplot::mcmc_rhat(rhat = object, ..., size = size)
}

#' @export
mcmc_rhat.brmsfit <- function (object, ..., pars = NULL, size = NULL)  {
  rh <- brms::rhat(object, pars = pars, ...)
  bayesplot::mcmc_rhat(rh, ..., size = size)
}
