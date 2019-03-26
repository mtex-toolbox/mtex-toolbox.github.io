%% map
% (method of <orientation_index.html orientation>)
%% 
% define orientations by pairs of vectors
% 
%
%% View Code
% 
%% Description
% Define an orientation that maps |u1| onto |v1| and |u2| onto |v2|
% 
%
%% Syntax
%   ori = orientation.map(u1,v1)
%   ori = orientation.map(u1,v1,u2,v2)
%   ori = orientation.map(u1,v1,u2,v2,CS,SS)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>u1, v1, u2, v2</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a> 
%                   <a href="Miller_index.html&#34;">Miller</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="crystalSymmetry_index.html&#34;">crystalSymmetry</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>SS</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="specimenSymmetry_index.html&#34;">specimenSymmetry</a>
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
%             <tt>ori</tt>
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
%% See also
% orientation_index orientation/byMiller orientation/byAxisAngle
% orientation/byEuler
%