%% nanmean
% FORMAT: Y = NANMEAN(X,DIM)
% 
%    Average or mean value ignoring NaNs
% 
%    This function enhances the functionality of NANMEAN as distributed in
%    the MATLAB Statistics Toolbox and is meant as a replacement (hence the
%    identical name).
% 
%    NANMEAN(X,DIM) calculates the mean along any dimension of the N-D
%    array X ignoring NaNs.  If DIM is omitted NANMEAN averages along the
%    first non-singleton dimension of X.
% 
%    Similar replacements exist for NANSTD, NANMEDIAN, NANMIN, NANMAX, and
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
%          <tt>y = nanmean(x,dim)</tt>
%       </div>
%    </div>
% </html>
% 
%% See also
%