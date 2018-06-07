#' get_estimates
#'
#' This function allows us to extract the estimated parameter estimates from a lmer model.
#' @param model An lmerMod object
#' @return A list object with fixed and random effect estimates
#' @import stats
#' @importFrom lme4 VarCorr
#' @import dplyr
#' @export

get_estimates <- function(model) {
        smer <- summary(model)
        fixed_effects <- as.data.frame(coef(smer))
        random_effects <- as.data.frame(VarCorr(model, comp = c("Variance", "Std.Dev")))
        estimates_list <- list(fixed_effects = fixed_effects,
                               random_effects = random_effects)
        estimates_list
}
