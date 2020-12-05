function shortestPath=ShortestPathLength(dest_node,distance)
%This function takes the destination node number as an input and gives the
%shortest distance from the source node to this node.

shortestPath=distance(dest_node);

fprintf('The shortest distance= %-4d ',shortestPath);

end
