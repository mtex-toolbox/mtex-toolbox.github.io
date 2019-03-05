%% loadHelper
% helps to load data-matrix with ColumnNames
% restricts also data according to conventions (e.g. >4pi)
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>loader = loadHelper( d, 'param1',val1,'param2',val2 )</tt>
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
%             <tt>d</tt>
%          </td>
%          <td>
%                <pre>(n x m) matrix</pre>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ColumnNames</tt>
%          </td>
%          <td>
%                <p>(1 x m) cell of names</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>Columns</tt>
%          </td>
%          <td>
%                <p>(1 x m) cell of ColumnNames indizes</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control loadHelper<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'KeepNaN
%   Radians
%   passive rotation'</tt>
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
%             <tt>loader</tt>
%          </td>
%          <td>
%                <p>structure with some funs</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 