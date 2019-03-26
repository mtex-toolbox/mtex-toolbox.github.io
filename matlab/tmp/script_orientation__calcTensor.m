%% calcTensor
% (method of <orientation_index.html orientation>)
%% 
% compute the average tensor for a vector of orientations
% 
%
%% View Code
% 
%% Syntax
%   %returns the Voigt--, Reuss-- and Hill-- average <tensor_index.html" tensor> of T
%   [TVoigt, TReuss, THill] = calcTensor(ori,T,'weights',w) -
% 
%   % returns the specified <tensor_index.html" tensor>, i.e. 'Hill' in this case
%   THill = calcTensor(ori,T,'Hill')
% 
%   % uses geometric mean instead of arithmetric one
%   TVoigt = calcTensor(ori,T,'geometricMean')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
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
%             <tt>w</tt>
%          </td>
%          <td>
%                <p>weights for each orientation</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcTensor<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Voigt'</tt>
%                   </td>
%                   <td>
%                         <p>voigt mean</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Reuss'</tt>
%                   </td>
%                   <td>
%                         <p>reuss mean</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Hill'</tt>
%                   </td>
%                   <td>
%                         <p>hill mean</p>
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
%             <tt>TVoigt, TReuss, THill</tt>
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
% 
%