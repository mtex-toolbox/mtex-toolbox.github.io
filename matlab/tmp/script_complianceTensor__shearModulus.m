%% shearModulus
% (method of [[complianceTensor_index.html,complianceTensor]])
%% 
% shear modulus for an compliance tensor
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
%   E = shearModulus(S,h,u)
%   E = shearModulus(S,[],u)
%   E = shearModulus(S,h,[])
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