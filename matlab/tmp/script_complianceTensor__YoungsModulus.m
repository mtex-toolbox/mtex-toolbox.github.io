%% YoungsModulus
% (method of <complianceTensor_index.html complianceTensor>)
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
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>E = YoungsModulus(C)
%   E = YoungsModulus(C,x)</tt>
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
%             <tt>C</tt>
%          </td>
%          <td>
%                <p>elastic stiffness <a href="tensor_index.html&#34;">tensor</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>x</tt>
%          </td>
%          <td>
%                <p>list of <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
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
%       <tr>
%          <td width="100px">
%             <tt>E</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="S2FunHarmonic_index.html&#34;">S2FunHarmonic</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% tensor/shearModulus tensor/volumeCompressibility tensor/ChristoffelTensor
%