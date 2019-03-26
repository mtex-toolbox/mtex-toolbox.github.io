%% mean
% (method of <quaternion_index.html quaternion>)
%% 
% mean of a list of quaternions, principle axes and moments of inertia
% 
%
%% View Code
% 
%% Syntax
% 
%   [m, lambda, V] = mean(q)
%   [m, lambda, V] = mean(q,'robust')
%   [m, lambda, V] = mean(q,'weights',weights)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>q</tt>
%          </td>
%          <td>
%                <p>list of <a href="quaternion_index.html&#34;">quaternion</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>weights</tt>
%          </td>
%          <td>
%                <p>list of weights</p>
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
%                <p>mean orientation</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>lambda</tt>
%          </td>
%          <td>
%                <p>principle moments of inertia</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>V</tt>
%          </td>
%          <td>
%                <p>principle axes of inertia (<a href="quaternion_index.html&#34;">quaternion</a>)</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% orientation/mean
%