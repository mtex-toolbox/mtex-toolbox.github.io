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
%                <p>rotational axis (<a href="vector3d_index.html&#34;">vector3d</a>)</p>
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
%                <p>
%                   <a href="quaternion_index.html&#34;">quaternion</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
%  quaternion/quaternion euler2quat Miller2quat vec42quat hr2quat
%