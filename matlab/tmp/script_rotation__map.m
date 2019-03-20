%% map
% (method of [[rotation_index.html,rotation]])
%% 
% define rotations by pairs of vectors
% 
%
%% View Code
% 
%% Description
% Define a rotation that maps |u1| onto |v1| and |u2| onto |v2|
% 
%
%% Syntax
% 
%   % an arbitrary rotation that maps u1 parallel to v1
%   rot = rotation(u1,v1)
% 
%   % a rotation that maps u1 parallel to v1 and u2 parallel to v2
%   rot = rotation(u1,v1,u2,v2)
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
%             <tt>rot</tt>
%          </td>
%          <td>
%                <p>[[rotation_index.html,rotation]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% rotation_index rotation/byMatrix rotation/byAxisAngle
% rotation/byEuler
%