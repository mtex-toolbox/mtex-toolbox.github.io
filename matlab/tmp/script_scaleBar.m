%% scaleBar
% Inserts a scale bar on the current ebsd or grain map.
% 
%
%% View Code
% 
%% Syntax
%   hg = scaleBar(ebsd, scanunits)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>ebsd</tt>
%          </td>
%          <td>
%                <p>an mtex ebsd or grain object</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>scanunits</tt>
%          </td>
%          <td>
%                <p>units of the xy coordinates of the ebsd scan (e.g., 'um')</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control scaleBar<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'BACKGROUNDCOLOR'</tt>
%                   </td>
%                   <td>
%                         <p>background color (ColorSpec)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'BACKGROUNDALPHA'</tt>
%                   </td>
%                   <td>
%                         <p>background transparency (scalar 0&lt;=a&lt;=1)</p>
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
%             <tt>oval</tt>
%          </td>
%          <td>
%                <p>output value</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ounit</tt>
%          </td>
%          <td>
%                <p>output unit</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 