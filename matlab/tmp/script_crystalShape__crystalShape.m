%% crystalShape
% (method of <crystalShape_index.html crystalShape>)
%% 
% a class representing crystal shapes.
% 
% The code of this class is based on the paper
% 
% Enderlein, J., 1997. A package for displaying crystal morphology.
% Mathematica Journal, 7(1).
% 
% we need more :)
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>cS = crystalShape(N,habitus,extension)</tt>
%       </div>
%    </div>
% </html>
% 
%% Example
%% 
% 

mtexdata titanium;
cS = crystalShape.hex(ebsd.CS)
close all
plot(cS)

%% 
% 
