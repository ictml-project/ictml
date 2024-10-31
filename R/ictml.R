#' @keywords internal
"_PACKAGE"

# Suppress R CMD check note
# Namespace in Imports field not imported from: ...
#   All declared Imports should be used.
ignore_unused_imports <- function() {
  rtemis::rtemis_palette
  # tlverse::???   ## tlverse does not export anything
}
