%% findByLocation
% (method of [[EBSD_index.html,EBSD]])
%% 
% select EBSD data by spatial coordinates
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>map = findByLocation( ebsd, xy )</tt>
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
%             <tt>ebsd</tt>
%          </td>
%          <td>
%                <p>[[EBSD_index.html,EBSD]]</p>
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
%             <tt>ebsd</tt>
%          </td>
%          <td>
%                <p>[[EBSD_index.html,EBSD]] subset</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example

mtexdata fo
plotx2east
plot(ebsd)
p = [10000 5000] %ginput(1)
g = findByLocation(ebsd,p)

%% 
% 

%% See also
% EBSD/findByLocation grain2d/findByOrientation
%