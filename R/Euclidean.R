#' @title Finding The Greatest Common Divisor Of Two Numbers
#' @description It aims to achieve an efficient method for computing the greatest 
#' common divisor (GCD) of two integers (numbers), the largest number 
#' that divides them both without a remainder.
#' @param x one of the number to compute GCD
#' @param y another number to compute GCD
#' @references https://en.wikipedia.org/wiki/Euclidean_algorithm
#' @return returns HCF of two numbers
#' @export
#' @examples  
#' euclidean(123612, 13892347912)
#' euclidean(100, 1000)

euclidean<-function(x,y)
{
  if(is.numeric(x)==TRUE&is.numeric(y)==TRUE)
  {
    t<-1
    while (t!=0)
    {
      t<-x%%y
      x<-y
      y<-t
    }
    return(x)
  }
  else
  {stop()}
}




