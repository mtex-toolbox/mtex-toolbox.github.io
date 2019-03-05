%% project2EulerFR
% (method of [[quaternion_index.html,quaternion]])
%% 
% projects quaternions to a fundamental region
% 
%
%% View Code
% 
%% Syntax
%   [phi1,Phi,phi2] = project2EulerFR(q,CS)       % Bunge fundamental region
%   [alpha,beta,gamma] = project2EulerFR(q,CS,'Matthies')  % Matthies fundamental region
%   [phi1,Phi,phi2] = project2EulerFR(q,CS1,CS2)  % misorientations
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>q</tt>
%          </td>
%          <td>
%                <p>[[quaternion_index.html,quaternion]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS1, CS2</tt>
%          </td>
%          <td>
%                <p>crystal [[symmetry_index.html,symmetry]]</p>
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
%             <tt>phi1,Phi,phi2</tt>
%          </td>
%          <td>
%                <p>Euler angles</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 