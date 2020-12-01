function [dist] = BFS(E,queue,dist,time)
    
    dist(queue) = time; % mark nodes reachable at current step
    visited = find(dist~=Inf); % mark nodes already visited
    neighbors = []; % find nodes newly reachable at next step
    
    for i = length(queue)
        node = queue(i);
        new_neighbors = setdiff(find(E(node,:)),visited);
        neighbors = union(neighbors,new_neighbors);
    end
    
    if ~isempty(neighbors)
        dist = BFS(E,neighbors,dist,time+1);
    end
    
end