#' Computes the shortest distance between nodes in graph
#'
#' @param graph Inputting the data frame
#' @param init_node Imputing the node from which shortest distance must be 
#' calculated
#'
#' @return shortest distance between nodes
#' @export
#'
#' @examples
dijkstra<-function(graph,init_node){
  
  if (length(colnames(graph))!=3 || !is.numeric(init_node) || !all(colnames(graph)==c("v1","v2","w")) || !is.data.frame(graph) || !any(unique(graph[['v1']]==init_node))) stop("Wrong input")
  
  #create vector having unvisited nodes
  
  unvisited<-unique(graph[['v1']])
  
  #create data.frame with the shortest distances from the initial node (0)
  
  df<-data.frame(vertex=unvisited, shortest_dist=rep(Inf,length(unvisited)), flag=rep(0,length(unvisited)))
  
  df[df[['vertex']]==init_node,'shortest_dist']=0
  
  #continue while unvisited vector is not emgraphty (all vertices have been visited)
  
  while (length(unvisited)>0){
    
    #filter according to the flag and then find the vertex with the shortest distance from the initial node
    
    fl<-df[df[,'flag']==0,]
    
    m=fl[order(fl[,'shortest_dist']),'vertex'][1]
    
    #check nearest neighbors for that vertex
    
    nearest<-graph[graph[['v1']]==m,'v2']
    
    
    for (i in nearest){
      
      if (graph[graph[,'v1']==m & graph[,'v2']==i,'w']+df[df[,'vertex']==m,'shortest_dist'] < df[df[,'vertex']==i,'shortest_dist']){
        
        df[df[,'vertex']==i,'shortest_dist']<-graph[graph[,'v1']==m & graph[,'v2']==i,'w']+df[df[,'vertex']==m,'shortest_dist']
        
      }else{
        next
      }
      
    }
    
    #flag that vertex as "1"  that implies visited vertex
    
    df[df[,'vertex']==m,'flag']<-1
    
    #remove that vertex from unvisited vector
    
    unvisited<-unvisited[-which(unvisited==m)]
    
  }
  
  return(df[,'shortest_dist'])
  
}
