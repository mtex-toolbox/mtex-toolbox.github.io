%% log
% (method of <orientation_index.html orientation>)
%% 
% the misorientation vector between two orientations
% 
%
%% View Code
% 
%% Description
% 
% Mathematically, misorientation vector is the the inverse of the
% exponential map, hence the name log.
% 
%
%% Syntax
%   m = log(mori) % the misorientation vector in crystal coordinats
% 
%   % the misorientation vector in crystal coordinats
%   m = log(ori,ori_ref)
% 
%   % the misorientation vector in specimen coordinats
%   v = log(ori,ori_ref,'left')
%   v = ori_ref .* m
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>mori</tt>
%          </td>
%          <td>
%                <p>misorientation</p>
%          </td>
%       </tr>
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
%       <tr>
%          <td width="100px">
%             <tt>ori_ref</tt>
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
%% Output
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>m</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="Miller_index.html&#34;">Miller</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% orientation/logm vector3d/exp Miller/exp
%