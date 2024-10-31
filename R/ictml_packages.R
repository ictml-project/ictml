#' List all packages in the ICTML
#'
#' @param include_self Include **ictml** in the list?
#'
#' @return
#' Returns a character vector of package names.
#'
#' @examples
#' ictml_packages()
#'
#' @importFrom utils packageDescription packageVersion
#' @export
ictml_packages <- function(include_self = TRUE) {
  raw <- packageDescription(.packageName)$Imports
  imports <- strsplit(raw, split = ",", fixed = TRUE)[[1]]
  parsed <- gsub("^\\s+|\\s+$", "", imports)
  names <- vapply(strsplit(parsed, "\\s+"), FUN = `[[`, 1, FUN.VALUE = NA_character_)

  if (include_self) {
    names <- c(names, .packageName)
  }

  names
}
