%% approximation
% (method of [[S2AxisFieldHarmonic_index.html,S2AxisFieldHarmonic]])
%
%% View Code
% 
%% Syntax
%   sAF = S2AxisField.quadrature(v, value)
%   sAF = S2AxisField.quadrature(v, value, 'bandwidth', bw)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>value</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]] (antipodal)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control approximation<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'bw'</tt>
%                   </td>
%                   <td>
%                         <p>degree of the spherical harmonic (default: 128)</p>
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
%             <tt>sAF</tt>
%          </td>
%          <td>
%                <p>[[S2AxisFieldHarmonic_index.html,S2AxisFieldHarmonic]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 