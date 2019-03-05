%% YoungsModulus
% (method of [[stiffnessTensor_index.html,stiffnessTensor]])
%% 
% Young's modulus for an elasticity tensor
% 
%
%% View Code
% 
%% Description
% 
% $$E = \frac{1}{S_{ijkl} x_i x_j x_k x_l}$$
% 
%
%% Syntax
%   E = YoungsModulus(C)
%   E = YoungsModulus(C,x)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>C</tt>
%          </td>
%          <td>
%                <p>elastic stiffness [[tensor_index.html,tensor]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>x</tt>
%          </td>
%          <td>
%                <p>list of [[vector3d_index.html,vector3d]]</p>
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
%             <tt>E</tt>
%          </td>
%          <td>
%                <p>Youngs modulus</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% tensor/shearModulus tensor/volumeCompressibility tensor/ChristoffelTensor
%