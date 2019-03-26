%% checkInside
% (method of <grain2d_index.html grain2d>)
%% 
% check for points or grains to be inside a big grain
% 
%
%% View Code
% 
%% Syntax
%   isInside = checkInside(hostGrains, [x,y])
%   isInside = checkInside(hostGrains, inclusionGrains)
%   isInside = checkInside(hostGrains, ebsd)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>hostGrains</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="grain2d_index.html&#34;">grain2d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>inclusionGrains</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="grain2d_index.html&#34;">grain2d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>[x,y]</tt>
%          </td>
%          <td>
%                <p>list of [x(:) y(:)] coordinates</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control checkInside<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'includeBoundary'</tt>
%                   </td>
%                   <td>
%                         <p>points on the boundary are considered as inside</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ignoreInclusions'</tt>
%                   </td>
%                   <td>
%                         <p>points within inclusions belong to the host grain</p>
%                         <p>e, for an EBSD pixel to be inside a grain it has to be completely ide the grain. Pixels at the boundary may belong to no grain.</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Output
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>isInside</tt>
%          </td>
%          <td>
%                <p>numInclusionGrains x numHostGrains matrix</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>isInside</tt>
%          </td>
%          <td>
%                <p>numEBSD x numHostGrains matrix</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>isInside</tt>
%          </td>
%          <td>
%                <p>numXY x numHostGrains matrix</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
%  mtexdata small
%  grains = calcGrains(ebsd('indexed'))
%  plot(grains(grains(75).checkInside(grains)))
% 

%% See also
% EBSD/findByLocation grain2d/findByOrientation
%