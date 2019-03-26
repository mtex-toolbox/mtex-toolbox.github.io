%% findByLocation
% (method of <grain2d_index.html grain2d>)
%% 
% select a grain by spatial coordinates
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>id = findByLocation( grains, pos )</tt>
%       </div>
%    </div>
% </html>
% 
%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>grains</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="grain2d_index.html&#34;">grain2d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>xy</tt>
%          </td>
%          <td>
%                <p>list of [x(:) y(:)] coordinates, respectively [x(:) y(:) z(:)]</p>
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
%             <tt>grains</tt>
%          </td>
%          <td>
%                <p>list of grainIds</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
%  plotx2east
%  plot(grains)
%  p = ginput(1)
%  id = findByLocation(grains,p);
%  hold on, plot(grains(id).boundary,'linecolor','r','lineWidth',2), hold off
% 

%% See also
% EBSD/findByLocation grain2d/findByOrientation
%