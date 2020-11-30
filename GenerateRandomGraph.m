% generates a simple random graph with n 
% vertices and edge probability of p
function [E] = GenerateRandomGraph(n,p)

    E = zeros(n);
    
    for i = 1:n-1
        row = rand([n-i,1]) < p;
        E(i,i+1:n) = row;
        E(i+1:n,i) = row;
    end

end