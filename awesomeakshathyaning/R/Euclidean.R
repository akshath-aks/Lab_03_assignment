#' @title Finding The Highest Common Factor Of Two Numbers
#'
#' @param x one of the number to compute HCF
#' @param y another number to compute HCF
#'
#' @return returns HCF of two numbers
#' @export
#'
#' @examples
euclidean<-function(x,y){
  if(x>y){
    smaller<-y
  }else{
    smaller<-x
  }
  for (i in 1:smaller){
    if ((x %% i == 0) && (y %% i == 0)){
      hcf<-i
    }
  }
  return(hcf)
}
euclidean(100, 1000)






