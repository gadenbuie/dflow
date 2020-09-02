#! /usr/bin/env Rscript

# Still uses r_make() to ensure clean execution environment no matter where
# make.R is called!
drake::r_make()

message("drake::make() complete.")
