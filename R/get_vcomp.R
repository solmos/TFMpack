library(dplyr)
get_vcomp <- function(model){
        r_eff <- get_estimates(model)$random_effects %>%
                filter(is.na(var2))
        total_variance <- sum(r_eff$vcov)
        vcomp_table <- r_eff %>%
                transmute(Group = grp, Name = var1,
                          Variance = vcov,
                          Percentage = round(100 * vcov / total_variance, 2))
        vcomp_table
}
