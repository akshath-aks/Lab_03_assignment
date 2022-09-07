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


# euclidean<-function(x,y)#888, 54{
#   while(y){
#     temp<-y #888
#     y<-x %% y
#     x<-temp
#   }
#   return(x)
# }
# euclidean(54,888)


dijkstra<-function(graph, init_code){
  
}



