#adding djstra function
#1.1.2 * dijkstra()
dijkstra<-function(graph,init_node){
  graph<-data.frame(v1,v2,w)
  dist[v1]<-Inf
  prev[v1]<-0
  Q<-v1
  dist[init_node]<-0
  #while(length(Q)!=0)
  
  
  
  #n<-1
  #for(n in length(v2))
  #{
  # if(v2[n]=init_node)
  # {
  # dist(v1[n])=w[n]
  #}
  # else
  #{
  #n=n+1
  #}
  #prev[v1]<-min(w[n])
  #}
  #n<-1
  #for(n in length(v2))
  #{
  #if(prev[v1]=v2[n]&prev[v1]!=init_node& prev[v1]+w[n]<dist(v1))
  #{dist(v1[n])=prev[v1]+w[n]
  #prev[v1]<-min(w[n])}
  #else{
  #n=n+1
  #}
  #return(prev[v1])
  #}
  #for(n in length(v2))
  #{
  #if(prev[v1]=v2[n]& prev[v1]+w[n]<dist(v1))
  #{dist(v1[n])=prev[v1]+w[n]
  #prev[v1]<-min(w[n])}
  # else{
  # n=n+1
  ## }
  #return(prev[v1])
  #}
}




wiki_graph <-
  data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
             v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
             w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))




