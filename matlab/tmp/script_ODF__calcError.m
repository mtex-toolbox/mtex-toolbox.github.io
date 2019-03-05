%% calcError
% (method of [[ODF_index.html,ODF]])
%% 
% calculate approximation error between two ODFs
% 
%
%% View Code
% 
%% Syntax
%   e = calcError(odf1,odf2)
%   e = calcError(odf,pf,'RP')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>odf1, odf2</tt>
%          </td>
%          <td>
%                <p>[[ODF_index.html,ODF]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>pf</tt>
%          </td>
%          <td>
%                <p>[[PoleFigure_index.html,PoleFigure]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>S3G</tt>
%          </td>
%          <td>
%                <p>[[SO3Grid_index.html,SO3Grid]] of quadrature nodes (optional)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcError<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'L0'</tt>
%                   </td>
%                   <td>
%                         <p>measure of the orientation space where $|odf1 - odf2|&gt;\epsilon|</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'L1'</tt>
%                   </td>
%                   <td>
%                         <p>L^1 error</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'L2'</tt>
%                   </td>
%                   <td>
%                         <p>L^2 error</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'RP'</tt>
%                   </td>
%                   <td>
%                         <p>RP  error (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'resolution'</tt>
%                   </td>
%                   <td>
%                         <p>resolution used for calculation of the error</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% PoleFigure/calcODF PoleFigure/calcError
%