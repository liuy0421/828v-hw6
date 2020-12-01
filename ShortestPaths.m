% return the lengths of single source shorest paths 
% from vertex i, given adjacency matrix E
function [dist] = ShortestPaths(i,E)
    
    [n,~] = size(E);
    dist = Inf(n,1); % initialize distance to Inf
    dist(i) = 0; % set distance to self to 0
    neighbors = find(E(i,:));
    
    if ~isempty(neighbors)
        dist = BFS(E,neighbors,dist,1);
    end

end