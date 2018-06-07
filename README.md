# TFMpack
R package accompanying my Master's thesis with data and useful functions.

## Installation

```{r}
# install.packages("devtools")
devtools::install_github("solmos/TFMpack")
```


## Example

Here is an example using the LAKE data set. We fit a linear mixed model with the `lmer()` function and extract the fixed and random estimates with `get_estimates()`:

```{r}
library(TFMpack)
library(lme4)
data(lake_long_df)
lmm <- lmer(CD4 ~ week + (1|subject), data = lake_long_df)
get_estimates(lmm)
```
