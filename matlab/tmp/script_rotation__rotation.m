%% rotation
% (method of <rotation_index.html rotation>)
%% 
% defines an rotation
% 
%
%% View Code
% 
%% Syntax
%   rot = rotation.byEuler(phi1,Phi,phi2)
%   rot = rotation.byEuler(alpha,beta,gamma,'ZYZ')
%   rot = rotation.axisAngle(v,omega)
%   rot = rotation.matrix(A)
%   rot = rotation.map(u1,v1)
%   rot = rotation.map(u1,v1,u2,v2)
%   rot = reflection(b)
%   rot = rotation.inversion
%   rot = rotation.byRodrigues(v)
%   rot = rotation(fibre(u1,v1),'resolution',5*degree)
%   rot = rotation(quaternion(a,b,c,d))
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>u1,u2</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v, v1, v2</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>n</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%                <p>tut</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>rot</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="rotation_index.html&#34;">rotation</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% quaternion_index orientation_index
%