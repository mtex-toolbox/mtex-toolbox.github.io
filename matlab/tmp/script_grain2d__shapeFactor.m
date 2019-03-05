%% shapeFactor
% (method of [[grain2d_index.html,grain2d]])
%% 
% calculates the shapefactor of the grain-polygon, without Holes
% 
% define as
% 
% $$ F = \frac{P}{EP} $$,
% 
% where $P$ is the [[Grain2d.perimeter.html,perimeter]] and  $EP$ is the
% [[Grain2d.equivalentPerimeter.html,equivalent perimeter]].
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>F = shapeFactor( grains )</tt>
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
%             <tt>p</tt>
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
%             <tt>F</tt>
%          </td>
%          <td>
%                <p>shapefactor</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% polygon/aspectRatio polygon/equivalentPerimeter polygon/perimeter
%