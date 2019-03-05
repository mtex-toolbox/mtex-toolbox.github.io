%% nanmedian
% FORMAT: Y = NANMEDIAN(X,DIM)
% 
%    Median ignoring NaNs
% 
%    This function enhances the functionality of NANMEDIAN as distributed
%    in the MATLAB Statistics Toolbox and is meant as a replacement (hence
%    the identical name).
% 
%    NANMEDIAN(X,DIM) calculates the mean along any dimension of the N-D
%    array X ignoring NaNs.  If DIM is omitted NANMEDIAN averages along the
%    first non-singleton dimension of X.
% 
%    Similar replacements exist for NANMEAN, NANSTD, NANMIN, NANMAX, and
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
%          <tt>y = nanmedian(x,dim)</tt>
%       </div>
%    </div>
% </html>
% 
%% See also
%