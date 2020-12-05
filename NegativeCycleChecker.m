function answerr=NegativeCycleChecker(n_edges, edges_sources,edges_targets, edges_weights , distance)
%This function checks if there is a negative-wighed cycle in our graph or
%NOT and if it finds it, it displays an error-message.
answerr='n'
for j = 1 : n_edges
    u = edges_sources(j);
    v = edges_targets(j);
    if ( distance(u) + edges_weights(j) < distance(v) )
      fprintf ( 1, '\n' );
      fprintf ( 1, 'BELLMAN_FORD - Fatal error!\n' );
      fprintf ( 1, '  Graph contains a cycle with negative weight.\n' );
      answerr='y';
    end
end

end