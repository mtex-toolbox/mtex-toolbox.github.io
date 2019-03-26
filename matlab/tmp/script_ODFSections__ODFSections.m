%% ODFSections
% (method of <ODFSections_index.html ODFSections>)
%% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>oS = ODFSections(CS1,'param1',val1,'param2',val2)</tt>
%       </div>
%    </div>
% </html>
% 
%% Example
%% 
% 

cs = crystalSymmetry('222')
oS = axisAngleSections(cs,cs)
ori = oS.makeGrid('resolution');
oM = PatalaColorKey(cs,cs)
rgb = oM.orientation2color(ori);
plot(oS,rgb,'surf')

%% 
% 

plot(oS,ori)

%% 
% 
%% 
