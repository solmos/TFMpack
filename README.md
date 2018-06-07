# TFMpack
R package accomanying my Master's thesis with data and useful functions.

## Installation

```{r}
# install.packages("devtools")
devtools::install_github("solmos/TFMpack")
```


## Example


```{r}
library(TFMpack)
library(lme4)
data(lake_long_df)
lmm <- lmer(CD4 ~ week + (1|subject), data = lake_long_df)
get_estimates(lmm)
```
