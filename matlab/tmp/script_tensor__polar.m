%% polar
% (method of [[tensor_index.html,tensor]])
%% 
% compute the polar decomposition of rank 2 tensors
% 
%
%% View Code
% 
%% Syntax
%   [R,SL] = polar(T)
%   [R,SL,SR] = polar(T)
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
%                <p>rank 2 [[tensor_index.html,tensor]]</p>
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
%             <tt>R</tt>
%          </td>
%          <td>
%                <p>orthogonal rank 2 [[tensor_index.html,tensor]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>SL</tt>
%          </td>
%          <td>
%                <p>symmetric rank 2 [[tensor_index.html,tensor]] such that SL * R = T</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>SR</tt>
%          </td>
%          <td>
%                <p>symmetric rank 2 [[tensor_index.html,tensor]] such that R * SR = T</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 