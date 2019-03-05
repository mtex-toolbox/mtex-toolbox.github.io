%% ChristoffelTensor
% (method of [[complianceTensor_index.html,complianceTensor]])
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
%          <tt>varargout = ChristoffelTensor(S,'param1',val1,'param2',val2)</tt>
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
%             <tt>S</tt>
%          </td>
%          <td>
%                <p>elatic compliance [[tensor_index.html,tensor]]</p>
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
%                <p>Christoffel [[tensor_index.html,tensor]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% tensor/directionalMagnitude tensor/rotate
%