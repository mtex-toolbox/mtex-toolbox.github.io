%% find
% (method of <quaternion_index.html quaternion>)
%% 
% return indece and distance of all nodes within a eps neighborhood
% 
%
%% View Code
% 
%% Syntax
%   % find for each quaternion in ref the closest quaternion in lookup
%   [ind,d] = find(table,ref,radius)
% 
%   % find for each quaternion in ref all quaternion in lookup that have
%   % angle not larger then epsilon
%   [ind,d] = find(table,rotation,epsilon)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>table</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="quaternion_index.html&#34;">quaternion</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ref</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="quaternion_index.html&#34;">quaternion</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>epsilon</tt>
%          </td>
%          <td>
%                <p>double</p>
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
%             <tt>ind</tt>
%          </td>
%          <td/>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>d</tt>
%          </td>
%          <td/>
%       </tr>
%    </table>
% </html>
% 