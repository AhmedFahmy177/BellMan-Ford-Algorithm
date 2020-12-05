function ShortestPathHighlighter(G,dest_node,names)
%This function highlights the shortest path from the source node to the
%denstination node.


SP=shortestpathtree(G,1,dest_node);
p=plot(G,'EdgeLabel',G.Edges.Weight,'Nodelabel',names,'EdgeColor','k','NodeColor','b');
p.MarkerSize=9 ;
highlight(p , SP ,'EdgeColor','g','LineWidth',5);

end