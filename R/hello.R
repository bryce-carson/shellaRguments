# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}

main <- function() {
  ## https://www.r-bloggers.com/2015/09/passing-arguments-to-an-r-script-from-command-lines/
  arguments = commandArgs(trailingOnly=TRUE)
  print(arguments)

  self <- "shellaRguments"
  self.available <- require(package = "shellaRguments") # Probably a bad idea!
  self.path <- if(self.available) find.package(package = self)

  ## silly.sh:
  ## #!/usr/bin/env sh
  ## echo $@
  inst.silly.path <- system.file("silly.sh", package = self)

  system2(inst.silly.path, args = arguments)
}
