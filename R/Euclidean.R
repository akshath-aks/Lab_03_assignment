#' @title Finding The Greatest Common Divisor Of Two Numbers
#' @description It aims to achieve an efficient method for computing the greatest 
#' common divisor (GCD) of two integers (numbers), the largest number 
#' that divides them both without a remainder.
#' @param x one of the number to compute GCD
#' @param y another number to compute GCD
#'
#' @return returns HCF of two numbers
#' @export
#'
#' @examples
#euclidean<-function(x,y){
# if(x>y){
#   smaller<-y
# }else{
#   smaller<-x
# }
#  for (i in 1:smaller){
#    if ((x %% i == 0) && (y %% i == 0)){
#     hcf<-i
#   }
#  }
#  return(hcf)
#}
#euclidean(100, 1000)


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




