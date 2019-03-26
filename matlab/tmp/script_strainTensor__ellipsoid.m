%% ellipsoid
% (method of <strainTensor_index.html strainTensor>)
%% 
% Length (1+e) and direction of principal axes of strain ellipsoid from
% finite, lagrangian/eulerian strain tensor E with eigenvalues lambda
% with
% (1+e) = sqrt(1+2*lambda) for a Lagranage strain tensor (default)
% (1+e) = sqrt(1-2*lambda) for a Euler strain tensor
%
%% View Code
% 
%% Syntax
%   [fe,qe] = ellipsoid(E)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>E</tt>
%          </td>
%          <td>
%                <pre>&lt;strainTensor_index.html" strainTensor&gt;</pre>
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
%                <p>directions of prinicpal axes of strain ellipsoid <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>qe</tt>
%          </td>
%          <td>
%                <p>length of ellipse axes (1+e)</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 