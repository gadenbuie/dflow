## Load your packages, e.g. library(drake).
source("./packages.R")

## Load your R files
lapply(list.files("./R", full.names = TRUE), source)

## _drake.R must end with a call to drake_config().
## The arguments to drake_config() are basically the same as those to make().
## --- Some Options ---
## lock_envir allows functions that alter the random seed to be used. The biggest
## culprits of this seem to be interactive graphics e.g. plotly and mapdeck.
##
## Set `parallelism = "future"` and `jobs = 4` to enable parallel target building
config <- drake_config(plan, cache_log_file = "drake_cache.csv")
if (!interactive()) config
