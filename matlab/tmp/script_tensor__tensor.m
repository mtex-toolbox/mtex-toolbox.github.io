%% tensor
% (method of <tensor_index.html tensor>)
%% 
% constructor
% 
% *tensor* is the low level constructor for a *tensor* object.
% For importing real world data you might want to use the *import_wizard*.
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>T = tensor(M,CS,'name',name,'unit',unit,'propertyname',property)</tt>
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
%             <tt>M</tt>
%          </td>
%          <td>
%                <p>matrix of tensor entries</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS</tt>
%          </td>
%          <td>
%                <p>crystal <a href="symmetry_index.html&#34;">symmetry</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control tensor<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'rank'</tt>
%                   </td>
%                   <td>
%                         <p>rank of the tensor</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'unit'</tt>
%                   </td>
%                   <td>
%                         <p>physical unit of the entries</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'name'</tt>
%                   </td>
%                   <td>
%                         <p>name of the tensor</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ODF/calcTensor EBSD/calcTensor
%