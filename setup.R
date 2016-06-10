# setup script for installing necessary packages

for (package_name in c("readr", "tidyr", "dplyr")) {
  print(paste("Checking package:", package_name))
  if (!suppressMessages(suppressWarnings(require(package_name, character.only = TRUE)))) {
    message(paste0("Installing package: ", package_name))
    install.packages(package_name)
  }
}
rm(package_name)
