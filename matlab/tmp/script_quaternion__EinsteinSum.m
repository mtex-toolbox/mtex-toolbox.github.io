%% EinsteinSum
% (method of [[quaternion_index.html,quaternion]])
%% 
% tensor multiplication according to Einstein summation
% 
%
%% View Code
% 
%% Description
% This function computes a tensor product according to Einstein summation
% convention
% 
%
%% Syntax
%   % sumation against dimension 1 and 2
%   C = EinsteinSum(E,[1 -1 2 -2],v,-1,v,-2)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>T1,T2</tt>
%          </td>
%          <td>
%                <p>[[tensor_index.html,tensor]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>dimT1</tt>
%          </td>
%          <td>
%                <p>vector of indices giving the summation order in tensor 1</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>dimT2</tt>
%          </td>
%          <td>
%                <p>vector of indices giving the summation order in tensor 2</p>
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
%                <p>[[quaternion_index.html,quaternion]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% 
%