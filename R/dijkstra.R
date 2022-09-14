#' Computes the shortest distance between nodes in graph
#'
#' @param graph Inputting the data frame
#' @param init_node Imputing the node from which shortest distance must be 
#' calculated
#' @return shortest distance between nodes
#' @export
#' @references https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm

dijkstra<-function(graph,init_node){
  
  if (length(colnames(graph))!=3) stop('columns must be 3')
  if(!is.numeric(init_node)) stop('init_code must be numeric')
  if(!all(colnames(graph) == c("v1","v2","w"))) stop('incorrect column names')
  if(!is.data.frame(graph)) stop('graph should be data frame')
  if(!any(unique(graph[['v1']] == init_node))) stop("Wrong input")
  
  #creating vector of not_visited
  
  not_visited<-unique(graph[['v1']])
  
  #data frame with the shortest distances from the initial node 0
  
  df<-data.frame(node=not_visited, shortest_distance=rep(Inf,length(not_visited)), temp=rep(0,length(not_visited)))
  df[df[['node']] == init_node,'shortest_distance']=0
  
  #Making sure all the nodes are visited
  
  repeat{
    
    #filtering based on temp and then finding the node with the shortest distance from the initial node
    
    tp<-df[df[,'temp'] == 0,]
    y=tp[order(tp[,'shortest_distance']),'node'][1]
    
    #checking nearest neighbors for that node
    
    nearest<-graph[graph[['v1']] == y,'v2']
    if((length(not_visited)<=0)){
      break
    }
    
    for (i in nearest){
      if (graph[graph[,'v1'] == y & graph[,'v2'] == i,'w']+df[df[,'node'] == y,'shortest_distance'] < df[df[,'node'] == i,'shortest_distance']){
        df[df[,'node'] == i,'shortest_distance']<-graph[graph[,'v1'] == y & graph[,'v2'] == i,'w']+df[df[,'node'] == y,'shortest_distance']
      }else{
        next
      }
    }
    
    #say that vertex as "1"  that means visited vertex
    
    df[df[,'node'] == y,'temp']<-1
    
    #Take out that node from not_visited vector
    
    not_visited<-not_visited[-which(not_visited == y)]
  }
  return(df[,'shortest_distance'])
}
wiki_graph <-
  data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
             v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
             w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))
dijkstra(wiki_graph, 1)
dijkstra(wiki_graph, 3)
