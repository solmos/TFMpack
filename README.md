# TFMpack
R package accomanying my Master's thesis with data and useful functions.

```{r}
data(iris)
lmm <- lme4::lmer(Sepal.Length ~ Sepal.Width + (1|Species), data = iris)
get_estimates(lmm)
```
