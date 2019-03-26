%% perimeter
% (method of <grainBoundary_index.html grainBoundary>)
%% 
% boundary length per grain including holes
% 
%
%% View Code
% 
%% Syntax
%   grains.boundary.perimeter
% 
%   % include subgrain boundaries
%   grains.boundary.perimeter + grains.innerBoundary.perimeter
% 
%   gB = grains.boundary('Iron','Iron');
% 
%   % length of low angle boundary per grain
%   gB(gB.misorientation.angle < 15*degree).perimeter
% 
%   % length of special boundaries per grain
%   gB(gB.isTwinning(CSL(3))).perimeter
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
%                <p>
%                   <a href="grainBoundary_index.html&#34;">grainBoundary</a>
%                </p>
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
%             <tt>peri</tt>
%          </td>
%          <td>
%                <p>list of grain perimeter sorted by grain id</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% Grain2d/perimeter
%