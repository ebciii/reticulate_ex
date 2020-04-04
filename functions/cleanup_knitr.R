# ---- cleanup_knitr -----
###### Use this script to move html files from the rmarkdown folder to the html folder
### knitr puts html files in same folder as the Rmd files; use this to separate into 2 folders
### The 'File Manipulation' Help page said that this is only portable for files within directory,
### therefore this script made need to be changed for the Windows or Linus OS
### This script (as opposed to cleanup_hmtl.R) also removes "_files" directories made after R3.6 installed
#---------------
# Cleanup directory and move html file into 'html' subfolder
cleanup_knitr <- function() {
  files <- list.files("rmarkdown/")
  files_html <- grep("html", files)
  file.rename(file.path("rmarkdown", files[files_html]),
            file.path("html", files[files_html]))
  # Clean up html files and the '_files' directories made by knitr in R3.6
  files_dirs <- grep("_files$", files)
  index <- c(files_dirs,files_html)
  tryCatch({  
    if (file.exists(file.path("rmarkdown", files[index]))) 
      #Delete file if it exists
      file.remove(file.path("rmarkdown", files[index]))
    }, error=function(e){})
}