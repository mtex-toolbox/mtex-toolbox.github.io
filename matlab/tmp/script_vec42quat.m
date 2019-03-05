%% vec42quat
% returns a quaternion q with q u_1 = v1 and q u2 = v2
% 
%
%% View Code
% 
%% Description
% The method *vec42quat* defines a [[quaternion_index.html,quaternion]] |q|
% by 4 directions |u1|, |u2|, |v1| and |v2| such that |q * u1 = v1| and |q
% * u2 = v2|
% 
%
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>q = vec42quat(u1,v1,u2,v2)</tt>
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
%             <tt>u1, u2</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v1, v2</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
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
% quaternion_index quaternion/quaternion axis2quat Miller2quat
% euler2quat hr2quat
%