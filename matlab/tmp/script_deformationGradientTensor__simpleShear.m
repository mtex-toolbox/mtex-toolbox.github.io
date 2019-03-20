%% simpleShear
% (method of [[deformationGradientTensor_index.html,deformationGradientTensor]])
%% 
% simple shear deformation tensor
% 
%
%% View Code
% 
%% Syntax
%   gamma = 45*degree;
%   F = deformationGradientTensor.simpleShear(d,n,gamma)
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
%                <p>shearing direction [[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>n</tt>
%          </td>
%          <td>
%                <p>normal or compression direction [[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>gamma</tt>
%          </td>
%          <td>
%                <p>shearing angle, default are 45 degree</p>
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
%             <tt>L</tt>
%          </td>
%          <td>
%                <p>[[deformationGradientTensor_index.html,deformationGradientTensor]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 