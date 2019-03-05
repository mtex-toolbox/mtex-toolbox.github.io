%% intersect
% (method of [[grainBoundary_index.html,grainBoundary]])
%% 
% length of a boundary segment
% 
%
%% View Code
% 
%% Syntax
%   [x,y] = intersect(gB,xy1,xy2)
%   [x,y,segLength] = intersect(gB,xy1,xy2)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>gb</tt>
%          </td>
%          <td>
%                <p>[[grainBoundary_index.html,grainBoundary]] 1, xy2 coordinates of the endpoints of the line</p>
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
%             <tt>x,y</tt>
%          </td>
%          <td>
%                <p>list of intersection points</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
%  mtexdata small
%  grains = calcGrains(ebsd('indexed'))
%  grains = smooth(grains,4)
%  plot(grains.boundary,'micronbar','off')
%  % define some line
%  xy1 = [33500,4500];  % staring point
%  xy2 = [36000,7500]; % end point
%  line([xy1(1);xy2(1)],[xy1(2);xy2(2)],'linewidth',1.5,'color','g')
%  [x,y] = grains.boundary.intersect(xy1,xy2);
%  hold on
%  scatter(x,y,'red')
% 
%  % find the number of intersection points
%  sum(~isnan(x))
%  % mark the intersected boundary segments
%  plot(grains.boundary(~isnan(x)),'lineColor','b','linewidth',2)
%  hold off
