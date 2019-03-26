%% logm
% (method of <orientation_index.html orientation>)
%% 
% the logarithmic map that translates a rotation into a spin tensor
% 
%
%% View Code
% 
%% Syntax
%   Omega = logm(mori) % spin tensor of a misorientation
% 
%   Omega = logm(ori,ori_ref) % spin tensor in crystal coordinates
%   Omega = logm(ori,ori_ref,'left') % spin tensor in specimen coordinates
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
%             <tt>Omega</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="spinTensor_index.html&#34;">spinTensor</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% orientation/log spinTensor/exp
%