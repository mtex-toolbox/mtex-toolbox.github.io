%% orientationPlot
% ODFSECTIONS
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>oP = orientationPlot(ax,CS1,'param1',val1,'param2',val2)</tt>
%       </div>
%    </div>
% </html>
% 
%% Example
%% 
% 

cs = crystalSymmetry('mmm')
oS = axisAngleSections(cs,cs)
ori = oS.makeGrid('resolution');
oM = PatalaColorKey(cs,cs)
rgb = oM.orientation2color(ori);
plot(oS,rgb,'surf')

%% 
% 
%% 
