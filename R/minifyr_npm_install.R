#' @export
minifyr_npm_install <- function(force = FALSE){
  if (!force) {
    ok <- yesno::yesno("This will install our app on your local library.
                       Are you ok with that? ")
  } else {
    ok <- TRUE
  }

  if (ok){
    processx::run(
      command = "npm",
      args = c("install"),
      wd = system.file("node", package = "node.minify")
    )
  }
}
