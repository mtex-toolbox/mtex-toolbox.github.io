%% expquat
% matrix exponential to convert skew symmetric matrices into quaternions
% 
%
%% View Code
% 
%% Syntax
%   q = expquat(M)
%   q = expquat(T)
%   q = expquat(tq)
%   q = expquat(tq)
%   q = expquat(tq,q) % exponential map relative to quaternion q
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>M</tt>
%          </td>
%          <td>
%                <p>skew symmetric matrix ~ element of the Lie algebra</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>T</tt>
%          </td>
%          <td>
%                <p>skew symmetric rank 2 tensor</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>tq</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a> element of the tangential space</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>a</tt>
%          </td>
%          <td>
%                <p>[a12, a13, a23] matrix entries of the skew symmetric matrix</p>
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
% quaternion_matrix Euler axis2quat hr2quat
%