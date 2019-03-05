%% axis2quat
% rotational axis, roational angle to Quaternion
% 
% Decription
% 
% defines a rotation by a rotational axis and a roational angle
% 
%
%% View Code
% 
%% Syntax
%   q = achs2quat(x,y,z,omega)
%   q = achs2quat(v,omega)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>x,y,z</tt>
%          </td>
%          <td>
%                <p>rotational axis (double)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>rotational axis ([[vector3d_index.html,vector3d]])</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>omega</tt>
%          </td>
%          <td>
%                <p>rotational angle</p>
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
%             <tt>q</tt>
%          </td>
%          <td>
%                <p>[[quaternion_index.html,quaternion]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
%  quaternion/quaternion euler2quat Miller2quat vec42quat hr2quat
%