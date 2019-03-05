%% finiteStrain
% (method of [[velocityGradientTensor_index.html,velocityGradientTensor]])
%% 
% derive finte strain axes and magnitudes from deformation tensor
% after n-steps (in strain rate units of L)
% using the solution of Provost et al.2014 doi:10.1029/2001JB001734
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[fe, qe, Ea] = finiteStrain(L,n)</tt>
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
%             <tt>L</tt>
%          </td>
%          <td>
%                <pre>velocityGradientTensor</pre>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>n</tt>
%          </td>
%          <td>
%                <pre>time step in units of strainrate*2 of L</pre>
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
%             <tt>fe</tt>
%          </td>
%          <td>
%                <p>finite strain ellipsoid axis directions (vector3d)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>qe</tt>
%          </td>
%          <td>
%                <p>length of ellipse axes</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>Ea</tt>
%          </td>
%          <td>
%                <p>finite strain tensor (Langrange)</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 