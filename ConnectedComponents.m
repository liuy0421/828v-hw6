% returns the sizes of the connected components
% in simple graph defined by adjacency matrix E
function [C] = ConnectedComponents(E)

    [n,~] = size(E);
    visited = zeros(n,1);
    C = [];
    queue = [];
    
    for i = 1:n
        if ~visited(i) % for each unvisited node
            visited(i) = 1; % mark it visited
            visited_ = DFS(i,E,visited);
            C = [sum(visited_ - visited)+1, C]; % update new CC
            visited = visited_;
        end
    end
    
end