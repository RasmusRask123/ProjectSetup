# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}


#Creates all files and folder for a standart proejct
MakeProject <- function(Path=getwd()){

  #R-Package position
  Package_path <- system.file(package="ProjectSetup")

browser()
  #Creates folders
  dir.create(paste0(Path,"/Documents"))
  dir.create(paste0(Path,"/Scripts"))
  dir.create(paste0(Path,"/Results"))
  dir.create(paste0(Path,"/Results/Figures"))
  dir.create(paste0(Path,"/Results/Tables"))
  dir.create(paste0(Path,"/Data"))
  dir.create(paste0(Path,"/Data/RawData"))
  dir.create(paste0(Path,"/Data/GeneratedData"))

  #Create some script
  file.copy(from = paste0(Package_path,"Data/Master.r"),to = paste0(Path,"/Scripts/Master.r"))
  file.copy(from = paste0(Package_path,"Data/DataCleaning.r"),to = paste0(Path,"/Scripts/DataCleaning.r"))


}


