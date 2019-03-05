%% energyVector
% (method of [[stiffnessTensor_index.html,stiffnessTensor]])
%% 
% Calculates Energy velocity vector (km/s)
% 
%
%% View Code
% 
%% Description
% Energy velocity for lossless elastic medium (i.e. no attenuation)
% Good proxy for group velocity, which typically has some energy loss
% The formula is given by
% F.I. Fedorov(1968)Theory of Elastic Waves in Crystals, 375 pp. New York: Penum Press.
% 
% Ve_i = C_ijkl P_j P_l X_k / rho*V
% 
%
%% Syntax
%   E = energyVector(C,x,v,p)
%   E = energyVector(C,x,v,p,rho)
%   E = energyVector(C,[],vFun,pFun)
%   E = energyVector(C,[],vFun,pFun,rho)
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
%                <p>[[stiffnessTensor_index.html,stiffnessTensor]] (units GPa)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>x</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]] propagation direction</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>plane wave velocity (unit km/s) e.g. vp,vs1 or vs2</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>p</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]] plane wave polarization vector e.g. pp,ps1 or ps2</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>vFun</tt>
%          </td>
%          <td>
%                <p>[[S2Fun_index.html,S2Fun]] plane wave velocity (unit km/s) e.g. vp,vs1 or vs2</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>pFun</tt>
%          </td>
%          <td>
%                <p>[[S2AxisField_index.html,S2AxisField]] plane wave polarization vector e.g. pp,ps1 or ps2</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>rho</tt>
%          </td>
%          <td>
%                <p>density in g/cm3</p>
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
%             <tt>E = Energy velocity vector (units km/s)
%  N.B. E_magnitude should be equal or more than plane wave velocity vp, vs1 or vs2
%  David Mainprice 6/02/2018</tt>
%          </td>
%          <td/>
%       </tr>
%    </table>
% </html>
% 