%% dot
% (method of [[orientation_index.html,orientation]])
%% 
% compute minimum dot(o1,o2) modulo symmetry
% 
%
%% View Code
% 
%% Syntax
%   d = dot(o1,o2)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>o1, o2</tt>
%          </td>
%          <td>
%                <p>[[orientation_index.html,orientation]]</p>
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
%             <tt>d = cos(omega/2) where omega is the smallest rotational angle of inv(o1)*o2</tt>
%          </td>
%          <td/>
%       </tr>
%    </table>
% </html>
% 
%% See also
% orientation/dot_outer orientation/angle
%