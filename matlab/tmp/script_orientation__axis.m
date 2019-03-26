%% axis
% (method of <orientation_index.html orientation>)
%% 
% rotational axis of an misorientation or two orientations
% 
%
%% View Code
% 
%% Syntax
%   % define a cubic and hexagonal symmetries
%   csCube = crystalSymmetry('cubic')
%   csHex = crystalSymmetry('hexagonal')
% 
%   % define two orientations
%   o1 = orientation.byEuler(0,0,0,csCube)
%   o2 = orientation.byEuler(10*degree,20*degree,30*degree,csHex)
% 
%   % the misorientation axis with respect to the specimen coordinate
%   % system is computed by
%   a = axis(o1,o2)
% 
%   % the misorientation axis with respect to csCube is computed by
%   a = axis(inv(o1)*o2,csCube)
% 
%   % the misorientation axis with respect to csHex is computed by
%   a = axis(inv(o1)*o2,csHex)
% 
%   % compute the misorientation axis ignoring symmetry
%   a = axis(inv(o1)*o2,'noSymmetry')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>mori,o1,o2</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="orientation_index.html&#34;">orientation</a>
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
%             <tt>a</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>m</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="Miller_index.html&#34;">Miller</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% orientation/angle
%