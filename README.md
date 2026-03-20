


&ensp;

# PHARMAVERSE R PACKAGES INSTALLATION

&ensp;

## Overview

This repostory allows to install R packages related to R Pharmaverse used for SDTM and ADaM data transformation (sdtm.oak, admiral, pharmaverseadam, pharmaverseraw, etc). It is used to install a local R conda environment with all the dependencies required for the project.

&ensp;

## Directory Structure

```
Pharmaverse_R_packages_installation/
├── environment.yml # conda environment file - packages available on conda
├── README.md
├── R_packages.csv # csv file listing R packages unavailable on conda
└── R_packages_installation.R # function to intall R pacakges
```

&ensp;

## Requirements


### Requirements
- conda version 25.9.1 
- OR mamba version 2.3.2 (quicker installation)


### Installation Steps
```bash
# Initialize the conda environment and install from the environment.yml file
mamba env create -f environment.yml -n pharmaverse

# activate the environment
mamba activate pharmaverse

# install R packages not available on conda
Rscript R_packages_installation.R
```

### Notes
- Running the R script R_packages_installation.R will create a log file installation.log in the current directory. 
- If errors, check From this log file and identity the packages that failed to install. Add them to the r packages list file R_packages.csv following the same strucutre (version is not required).
- This repository sucessfully installed the R packages listed in requirement.yaml/R_packages.csv on my local machine (Fedora, Linux 6.18.8-100.fc42.x86_64). This installation outcome can vary depending on the OS and linux distribution
- The installation install the R packages based a exhaustive list of pharmaverse R packages. Do not hesitate to extend the list of R packages to install by adding to the r_packages.csv file.



&ensp;

## Author

Created for Hoang Dong Nguyen.