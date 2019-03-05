%% loadTensor_generic
% load a Tensor from a file
% 
%
%% View Code
% 
%% Description
% 
% *loadEBSD_generic* is a generic function that reads any ascii file
% containing a matrix like
% 
%  e_11 e_12  ... e_1j
%   .     .   ...  .
%   .     .    .   .
%  e_i1   .   ... e_ij
% 
% describing the a Tensor
% 
%
%% Syntax
%   pf   = loadTensor_generic(fname,<options>)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>fname</tt>
%          </td>
%          <td>
%                <p>file name (text files only)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control loadTensor_generic<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
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
%% Example
%% 
% 

%% See also
% loadData
%