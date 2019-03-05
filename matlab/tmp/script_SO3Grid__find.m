%% find
% (method of [[SO3Grid_index.html,SO3Grid]])
%% 
% return indece and distance of all nodes within a eps neighborhood
% 
%
%% View Code
% 
%% Syntax
%   [ind,dist] = find(SO3G,nodes,radius)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>SO3G</tt>
%          </td>
%          <td>
%                <p>[[SO3Grid_index.html,SO3Grid]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>nodes</tt>
%          </td>
%          <td>
%                <p>[[quaternion_index.html,quaternion]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>radius</tt>
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
%          <td>
%                <p>index of the closes grid point</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>dist</tt>
%          </td>
%          <td>
%                <p>misorientation angle</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 