%% ChristoffelTensor
% (method of <stiffnessTensor_index.html stiffnessTensor>)
%% 
% Christoffel tensor of an elasticity tensor for a given direction
% 
% Formula: E_jk = C_ijkl n_j n_l
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>E = ChristoffelTensor(C,n)</tt>
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
%                <p>Christoffel <a href="tensor_index.html&#34;">tensor</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% tensor/directionalMagnitude tensor/rotate
%