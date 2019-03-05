%% equivalentRadius
% (method of [[grain2d_index.html,grain2d]])
%% 
% returns the equivalent radius of grain-polygon
% 
% defined as
% 
% $$ r = \sqrt{\frac{A}{\pi}} $$,
% 
% where $A$ is the [[Grain2d.area.html,area]] of a grain
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>r = equivalentRadius(grains)</tt>
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
%                <p>[[grain2d_index.html,grain2d]]</p>
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
%             <tt>r</tt>
%          </td>
%          <td>
%                <p>radius (in measurement units)</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% grain2d/deltaarea grain2d/equivalentPerimeter grain2d/paris
%