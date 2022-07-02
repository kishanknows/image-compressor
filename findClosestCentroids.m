function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
norm = zeros(K, 1);

idx = zeros(size(X,1), 1);

% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
%

for i = 1:size(X, 1)
    for j = 1:K
        norm(j) = (X(i, :) - centroids(j, :))*(X(i, :) - centroids(j, :))';
    end
    [~, idx(i)] = min(norm);
end






end

