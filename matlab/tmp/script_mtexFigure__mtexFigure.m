%% mtexFigure
% (method of [[mtexFigure_index.html,mtexFigure]])
%% 
% class to handles figures with equaly sized axes
% 
% features:
% * nicely resize axes
% * individual colorbar
% * global colorbars
% 
% case A: children of same size and fixed aspectratio
% 
%  drawNow
%    |  |
%    V  |
%  calcTightInset -> compute width of boundary around each axis
%       |
%       V
%  updateLayout
%       |
%       V
%  calcPartition -> compute partition (nrows, ncols)
%       |
%       V
%  calcAxesSize  -> compute axes size
% 
% 
% general concept of MTEX figures:
% 
% mtexFigure -> cBarAxis handle to each colorbar axes
%       |
%       V
%    children -> mapPlot (stored in appdata of axes handle) -> micronbar
%             -> spherical Plot (stored in appdata of axes handle)
%              -> pfPlot     [CS,SS,h]
%              -> MillerPlot [CS]
%               -> ipfPlot   [r,SS]
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>mtexFig = mtexFigure('param1',val1,'param2',val2)</tt>
%       </div>
%    </div>
% </html>
% 