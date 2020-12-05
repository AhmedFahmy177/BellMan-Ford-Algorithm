function [n_nodes ,n_edges, edges_sources, edges_targets, edges_weights ,dest_node, names]=CorrectGraphInformation
%This function takes from the user the graph information: number of nodes,
%number of edges, edges` sources, edges` targets, edges` weights and the
%destinaton node.
n_nodes = input('Number of Nodes = ');
n_edges = input('Number of edges = ');
edges_sources = input('Edges` Sources in an array:');
edges_targets = input('Edges` Targets in an array:');
edges_weights = input('Edges` Weights in an array:');

while length(edges_targets) ~= length(edges_sources) || length(edges_targets) ~= length(edges_weights) || length(edges_sources) ~= length(edges_weights)|| n_edges ~= length(edges_targets) || length(edges_sources) ~= length(edges_weights)
   fprintf('Error!\n');
   fprintf('#of edges must =# number of targets = #of sources =#of Weights \n');
   fprintf('Re-Enter the Graph information: \n');
   n_nodes = input('Number of Nodes = ');
n_edges = input('Number of edges = ');
edges_sources = input('Edges` Sources in an array:');
edges_targets = input('Edges` Targets in an array:');
edges_weights = input('Edges` Weights in an array:');   
end

names = input('Nodes` Names : ');
dest_node=input('Enter the number of your destination node:');

end