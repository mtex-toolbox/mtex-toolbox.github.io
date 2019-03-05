%% byAxisAngle
% (method of [[orientation_index.html,orientation]])
%% 
% define orientations by rotational axis and rotational angle
% 
%
%% View Code
% 
%% Syntax
%   ori = orientation.byAxisAngle(v,omega,CS) % an orientation
%   ori = orientation.byAxisAngle(h,omega) % a misorientation
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>rotational axis [[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>m</tt>
%          </td>
%          <td>
%                <p>rotational axis [[Miller_index.html,Miller]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>omega</tt>
%          </td>
%          <td>
%                <p>rotation angle</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS</tt>
%          </td>
%          <td>
%                <p>[[crystalSymmetry_index.html,crystalSymmetry]]</p>
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
%                <p>[[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% orientation_index orientation/byEuler orientation/byMatrix orientation/map
%