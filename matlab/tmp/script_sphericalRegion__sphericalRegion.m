%% sphericalRegion
% (method of [[sphericalRegion_index.html,sphericalRegion]])
%% 
% sphericalRegion implements a region on the sphere
% The region is bounded by small circles given by there normal vectors
% and the maximum inner product, i.e., all points v inside a region
% satisfy the conditions dot(v, N) <= alpha
% 
%
%% View Code
% 
%% Syntax
%   sR = sphericalRegion(N)
%   sR = sphericalRegion(N,alpha)
%   sR = sphericalRegion(N,'antipodal')
% 
