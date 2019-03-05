%% symmetrise
% (method of [[tensor_index.html,tensor]])
%% 
% symmetrise a tensor according to its crystal symmetry
% 
%
%% View Code
% 
%% Syntax
%   % symmetrise according to a crystal symmetry
%   T = symmetrise(T,cs)
% 
%   % symmetrise transversally allong direction d
%   T = symmetrise(T,d)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>T</tt>
%          </td>
%          <td>
%                <p>[[tensor_index.html,tensor]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>cs</tt>
%          </td>
%          <td>
%                <p>[[symmetry_index.html,symmetry]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>d</tt>
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
%             <tt>T</tt>
%          </td>
%          <td>
%                <p>[[tensor_index.html,tensor]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 