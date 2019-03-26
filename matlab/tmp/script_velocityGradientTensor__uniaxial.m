%% uniaxial
% (method of <velocityGradientTensor_index.html velocityGradientTensor>)
%% 
% defines uniaxial tension/compression tensors
% 
%
%% View Code
% 
%% Syntax
% 
%   % uniaxial tension
%   L = velocityGradientTensor.uniaxial(d,r)
% 
%   % uniaxial compression
%   L = velocityGradientTensor.uniaxial(d,-r)
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
%                <p>tension direction <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>r</tt>
%          </td>
%          <td>
%                <p>strain rate</p>
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
%                <p>
%                   <a href="velocityGradientTensor_index.html&#34;">velocityGradientTensor</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 