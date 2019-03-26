%% velocity
% (method of <complianceTensor_index.html complianceTensor>)
%% 
% computes the elastic wave velocity(km/s) from the elastic stiffness Cijkl
% tensor and density (g/cm3)
% 
%
%% View Code
% 
%% Syntax
%   [vp,vs1,vs2,pp,ps1,ps2] = velocity(S)
%   [vp,vs1,vs2,pp,ps1,ps2] = velocity(S,x)
%   [vp,vs1,vs2,pp,ps1,ps2] = velocity(S,x,rho)
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
%                <p>elasticity <a href="stiffnessTensor_index.html&#34;">stiffnessTensor</a> Cijkl (UNITS GPa) <a href="tensor_index.html&#34;">tensor</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>x</tt>
%          </td>
%          <td>
%                <p>list of propagation directions (<a href="vector3d_index.html&#34;">vector3d</a>)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>rho</tt>
%          </td>
%          <td>
%                <p>material density (UNITS g/cm3)</p>
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
%             <tt>vp</tt>
%          </td>
%          <td>
%                <p>velocity of the p-wave (UNITS km/s)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>vs1</tt>
%          </td>
%          <td>
%                <p>velocity of the s1-wave (UNITS km/s)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>vs2</tt>
%          </td>
%          <td>
%                <p>velocity of the s2-wave (UNITS km/s)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>pp</tt>
%          </td>
%          <td>
%                <p>polarisation of the p-wave (particle movement, vibration direction)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ps1</tt>
%          </td>
%          <td>
%                <p>polarisation of the s1-wave (particle movement, vibration direction)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ps2</tt>
%          </td>
%          <td>
%                <p>polarisation of the s2-wave (particle movement, vibration direction)</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 