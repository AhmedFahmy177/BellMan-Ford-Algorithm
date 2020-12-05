function [distance, predecessor]=RelaxationProcess(n_nodes, n_edges, edges_weights,edges_targets,edges_sources,distance,predecessor)
%This function takes inputs: number of nodes, number of edges, edges`
%sources and targets and weights and does the relaxation process over these
%edges m times such that m is the number of nodes minus one.


for i = 1 : n_nodes - 1
    for j = 1 : n_edges
      v = edges_targets(j);
      u = edges_sources(j);
      t = distance(u) + edges_weights(j);
      if (t < distance(v) )
        distance(v) = t;
        predecessor(v) = u ;
      end
    end
end
end