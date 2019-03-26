%% matrix
% (method of <tensor_index.html tensor>)
%% 
% return tensor as a matrix
% 
%
%% View Code
% 
%% Syntax
%   m = matrix(T)
%   m = matrix(T,'Voigt')
%   m = matrix(T,'Kelvin')
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
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control matrix<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Voigt'</tt>
%                   </td>
%                   <td>
%                         <p>give a 4 rank tensor in Voigt notation, i.e. as a 6 x 6 matrix</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Kelvin'</tt>
%                   </td>
%                   <td>
%                         <p>same as above but with Kelvin normalization</p>
%                   </td>
%                </tr>
%             </table>
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
%                <p>matrix</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% 
%