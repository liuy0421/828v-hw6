% implements DFS
function [visited] = DFS(i,E,visited)

    neighbors = setdiff(find(E(i,:)),find(visited));
    queue = [neighbors]; % enqueue its unvisited neighbors
    
    while length(queue) ~= 0 % while the queue is not empty
        j = queue(1);
        queue = queue(2:end); % dequeue the first node
        visited(j) = 1;
        visited = DFS(j,E,visited);
    end

end