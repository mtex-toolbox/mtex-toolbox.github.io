%% shearModulus
% (method of [[stiffnessTensor_index.html,stiffnessTensor]])
%% 
% shear modulus for an elasticity tensor
% 
%
%% View Code
% 
%% Description
% 
% $$G = \frac{1}{4 S_{ijkl} h_i u_j h_k u_l}$$
% 
%
%% Syntax
%   E = shearModulus(C,h,u)
%   E = shearModulus(C,[],u)
%   E = shearModulus(C,h,[])
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
%                <p>elastic [[stiffnessTensor_index.html,stiffnessTensor]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>h</tt>
%          </td>
%          <td>
%                <p>shear plane [[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>u</tt>
%          </td>
%          <td>
%                <p>shear direction [[vector3d_index.html,vector3d]]</p>
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
%                <p>shear modulus</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% tensor/YoungsModulus tensor/volumeCompressibility tensor/ChristoffelTensor
%