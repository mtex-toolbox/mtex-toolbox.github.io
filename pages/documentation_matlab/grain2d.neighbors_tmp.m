%% 
% index list of size N x 2, where
% $$N = 2 \sum n_i $$
% is the total number of neighborhood relations (without self-reference).
% 
% pairs(i,:) give the indexes of two neighbored grains, i.e
% 
%  neighbor_gr = grains(pairs(1,:))
% 
% selects two neighbored grains.
% 