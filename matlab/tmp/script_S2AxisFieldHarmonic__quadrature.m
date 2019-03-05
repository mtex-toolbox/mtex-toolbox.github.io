%% quadrature
% (method of [[S2AxisFieldHarmonic_index.html,S2AxisFieldHarmonic]])
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>sF = S2AxisField.quadrature(v, value)
%   sF = S2AxisField.quadrature(f)
%   sF = S2AxisField.quadrature(f, 'bandwidth', M)</tt>
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
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>value</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]] (antipodal)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>f</tt>
%          </td>
%          <td>
%                <p>function handle in [[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control quadrature<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'M'</tt>
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