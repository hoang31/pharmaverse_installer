

sink(
    "installation.log",
    append = TRUE,
    split = TRUE
)

## ------------------------------------
## Install R packages - PHARMAVERSE
## ------------------------------------


#' Install R packages
#'
#' @param r_packages_list_file: str, path of the R package list table
#'
#' @return NULL
install_pharmaverse_packages <- function(
    r_packages_list_file = "R_packages.txt"
) {

    # read the list of R packages
    r_packages_info_df <- read.csv(r_packages_list_file, header = TRUE)
    r_packages_vec <- r_packages_info_df$Package

    # install the R packages
    print(r_packages_vec)
    install.packages(r_packages_vec, repos = "http://cran.us.r-project.org")
}

# install R packages
install_pharmaverse_packages("R_packages.csv")
sink()
