#' @export
minifyr_run <- function(
    input,
    output
){
  # We're taking the absolute path as we will move to another folder to
  # execute the Node Script
  input <- fs::path_abs(input)
  output <- fs::path_abs(output)
  processx::run(
    command = "node",
    args = c(
      "app.js",
      input,
      output
    ),
    wd = system.file("node", package = "node.minify")
  )
  return(output)
}
