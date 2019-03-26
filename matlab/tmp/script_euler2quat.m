%% euler2quat
% converts euler angle to quaternion
% 
%
%% View Code
% 
%% Description
% The method *euler2quat* defines a [[quaternion_index.html,rotation]]
% by Euler angles. You can choose whether to use the Bunge (phi,Phi,phi2)
% convention or the Matthies (alpha,beta,gamma) convention.
% 
%
%% Syntax
% 
%   q = euler2quat(alpha,beta,gamma) -
%   q = euler2quat(phi1,Phi,phi2,'Bunge') -
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>alpha, beta, gamma</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>phi1, Phi, phi2</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control euler2quat<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ABG, ZYZ'</tt>
%                   </td>
%                   <td>
%                         <p>Matthies (alpha, beta, gamma) convention (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'BUNGE, ZXZ'</tt>
%                   </td>
%                   <td>
%                         <p>Bunge (phi1,Phi,phi2) convention</p>
%                   </td>
%                </tr>
%             </table>
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
%             <tt>q</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="quaternion_index.html&#34;">quaternion</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% quaternion_index quaternion/quaternion axis2quat Miller2quat
% vec42quat hr2quat
%