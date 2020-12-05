clear
clc

%Taking Graph data:
[n_nodes ,n_edges, edges_sources, edges_targets, edges_weights ,dest_node, names]=CorrectGraphInformation;

%initializing the source node:
s=1;

%Using a directed graph to represent our graph information which we had
%from the previous lines of code :
G=digraph(edges_sources,edges_targets,edges_weights) ;
h=plot(G,'EdgeLabel',G.Edges.Weight,'Nodelabel',names,'EdgeColor','k','NodeColor','b');
h.MarkerSize=8;

%initialization of the distance array and predecessor array:
distance(1:n_nodes)=Inf;    
distance(s)=0;             %setting the distance to the source node to be ZERO.
predecessor(1:n_nodes)=0;

%Relaxation process to all edges:
 [distance, predecessor]= RelaxationProcess(n_nodes, n_edges, edges_weights,edges_targets,edges_sources,distance,predecessor) ;

 
 % For checking negative weight cycles
answerr=NegativeCycleChecker(n_edges, edges_sources,edges_targets, edges_weights , distance);
if answerr ~='y'

%Highlighting the shortest path:
ShortestPathHighlighter(G,dest_node,names) ;

%Displaying the shortest distance to the destination node.
shortestPath = ShortestPathLength(dest_node,distance);


else
end

