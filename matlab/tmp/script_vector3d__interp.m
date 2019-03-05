%% interp
% (method of [[vector3d_index.html,vector3d]])
%% 
% spherical interpolation - including some smoothing
% 
%
%% View Code
% 
%% Syntax
%   sF = interp(v,y,'linear')     % linear interpolation (default)
%   sF = interp(v,y,'harmonicApproximation') % approximation with spherical harmonics
%   yi = interp(v,y,vi,'linear')  % linear interpolation
%   yi = interp(v,y,vi,'spline')  % spline interpolation (default)
%   yi = interp(v,y,vi,'nearest') % nearest neigbour interpolation
%   yi = interp(v,y,vi,'inverseDistance') % inverse distance interpolation
%   sF = interp(v,y,vi,'harmonicApproximation') % approximation with spherical harmonics
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
%                <p>data points [[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>y</tt>
%          </td>
%          <td>
%                <p>data values</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>vi</tt>
%          </td>
%          <td>
%                <p>interpolation points [[vector3d_index.html,vector3d]]</p>
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
%             <tt>sF</tt>
%          </td>
%          <td>
%                <p>[[S2Fun_index.html,S2Fun]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>yi</tt>
%          </td>
%          <td>
%                <p>interpolation values</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 