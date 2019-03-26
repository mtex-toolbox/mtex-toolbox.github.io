%% diag
% (method of <tensor_index.html tensor>)
%% 
% convert rank 1 or rank 0 tensor into diagonal rank 2 tensor
% 
%
%% View Code
% 
%% Description
% If the input tensor has rank 0 or 1 the resulting tensor will have rank 2
% with the diagonal filled with the input tensor elements. If the input
% tensor has rank at least two the resulting tensor has rank 1 with
% elements being the diagonal of the input tensor.
% 
% Synatx
% 
%   T = diag(T)
% 
%
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>T = diag(T)</tt>
%       </div>
%    </div>
% </html>
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
%                <p>
%                   <a href="tensor_index.html&#34;">tensor</a>
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
%             <tt>T</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="tensor_index.html&#34;">tensor</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% tensor/trace
%