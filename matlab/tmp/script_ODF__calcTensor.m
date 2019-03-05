%% calcTensor
% (method of [[ODF_index.html,ODF]])
%% 
% compute the average tensor for an ODF
% 
%
%% View Code
% 
%% Syntax
%   [TVoigt, TReuss, THill] = calcTensor(odf,T)
%   THill = calcTensor(odf,T,'Hill')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>odf</tt>
%          </td>
%          <td>
%                <p>[[ODF_index.html,ODF]]</p>
%          </td>
%       </tr>
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
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcTensor<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'voigt'</tt>
%                   </td>
%                   <td>
%                         <p>voigt mean</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'reuss'</tt>
%                   </td>
%                   <td>
%                         <p>reuss mean</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'hill'</tt>
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
%             <tt>T</tt>
%          </td>
%          <td>
%                <p>[[tensor_index.html,tensor]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% 
%