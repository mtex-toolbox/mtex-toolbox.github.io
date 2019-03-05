%% rotate_outer
% (method of [[vector3d_index.html,vector3d]])
%% 
% rotate vector3d by quaternion
% 
%
%% View Code
% 
%% Syntax
%   v = rotate_outer(v,20*degree) % rotation about the z-axis
%   rot = rotation_outer.byEuler(10*degree,20*degree,30*degree)
%   v = rotate_outer(v,rot)
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
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
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
%% Output
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>r = q * v;</tt>
%          </td>
%          <td/>
%       </tr>
%    </table>
% </html>
% 