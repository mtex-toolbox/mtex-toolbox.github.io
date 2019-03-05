%% rotate
% (method of [[vector3d_index.html,vector3d]])
%% 
% rotate vector3d by rotation or orientation
% 
%
%% View Code
% 
%% Description
%  Either |v| or |rot| are single elements or both have the same size. The
%  ouptut |v| will have the same size as the biger of both input arrays.
% 
%
%% Syntax
%   v = rotate(v,20*degree) % rotation about the z-axis
%   rot = rotation.byEuler(10*degree,20*degree,30*degree)
%   v = rotate(v,rot)
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