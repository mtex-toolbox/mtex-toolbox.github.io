%% fitDislocationSystems
% (method of [[curvatureTensor_index.html,curvatureTensor]])
%% 
% fit dislocation systems to a curvature tensor
% 
% Formulae are taken from the paper:
% 
% Pantleon, Resolving the geometrically necessary dislocation content by
% conventional electron backscattering diffraction, Scripta Materialia,
% 2008
% 
%
%% View Code
% 
%% Syntax
% 
%   rho = calcDislocationDensities(kappa,dS)
% 
%   % compute complete curvature tensor
%   kappa = dS.dislocationTensor * rho;
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>kappa</tt>
%          </td>
%          <td>
%                <p>(incomplete) [[curvatureTensor_index.html,curvatureTensor]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>dS</tt>
%          </td>
%          <td>
%                <p>list of [[dislocationSystem_index.html,dislocationSystem]]</p>
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
%             <tt>rho</tt>
%          </td>
%          <td>
%                <p>dislocation densities</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>factor</tt>
%          </td>
%          <td>
%                <p>converting rho into units of 1/m^2</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 