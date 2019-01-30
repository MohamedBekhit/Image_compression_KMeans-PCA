function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

for i = 1:size(X, 1)
    distances = zeros(1, K);
   for j = 1:K
      distances(j) = sqrt(sum(power((X(i, :) - centroids(j, :)), 2)));
   end
   [~, idx(i)] = min(distances);
end


end

