%% dot_outer
% (method of <SO3Grid_index.html SO3Grid>)
%% 
% return outer inner product of all nodes within a eps neighborhood
% 
%
%% View Code
% 
%% Syntax
%   d = dot_outer(SO3G,nodes,'epsilon',radius)
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
%                <p>
%                   <a href="SO3Grid_index.html&#34;">SO3Grid</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>nodes</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="quaternion_index.html&#34;">quaternion</a>
%                </p>
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
%             <tt>d</tt>
%          </td>
%          <td>
%                <p>sparse matrix</p>
%                <p>mula  angle(g1,g2)/2 = dot(g1,g2)</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 