#' @export
node_available <- function(){
  test <- suppressWarnings(
    system(
      "npm -v",
      ignore.stdout = TRUE,
      ignore.stderr = TRUE
    )
  )
  attempt::warn_if(
    test,
    ~ .x != 0,
    "Error launching npm"
  )
  test <- suppressWarnings(
    system(
      "node -v",
      ignore.stdout = TRUE,
      ignore.stderr = TRUE
    )
  )
  attempt::message_if(
    test,
    ~ .x != 0,
    "Error launching Node"
  )
}
