%% nanmax
% FORMAT: [Y,IDX] = NANMAX(A,DIM,[B])
% 
%    Maximum ignoring NaNs
% 
%    This function enhances the functionality of NANMAX as distributed in
%    the MATLAB Statistics Toolbox and is meant as a replacement (hence the
%    identical name).
% 
%    If fact NANMAX simply rearranges the input arguments to MAX because
%    MAX already ignores NaNs.
% 
%    NANMAX(A,DIM) calculates the maximum of A along the dimension DIM of
%    the N-D array X. If DIM is omitted NANMAX calculates the maximum along
%    the first non-singleton dimension of X.
% 
%    NANMAX(A,[],B) returns the minimum of the N-D arrays A and B.  A and
%    B must be of the same size.
% 
%    Comparing two matrices in a particular dimension is not supported,
%    e.g. NANMAX(A,2,B) is invalid.
% 
%    [Y,IDX] = NANMAX(X,DIM) returns the index to the maximum in IDX.
% 
%    Similar replacements exist for NANMIN, NANMEAN, NANSTD, NANMEDIAN and
%    NANSUM which are all part of the NaN-suite.
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[y,idx] = nanmax(a,dim,b)</tt>
%       </div>
%    </div>
% </html>
% 
%% See also
%