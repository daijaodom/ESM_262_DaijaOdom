#' Creating a function that takes as input a single value for annual fertilizer and annual total precipation and returns yield.
#' 



fertilizer = function(fertilizer, TP) {
  cy = (1.8*fertilizer^2-0.5*fertilizer+0.1*TP)
  return (cy)
}