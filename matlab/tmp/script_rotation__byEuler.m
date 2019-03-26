%% byEuler
% (method of <rotation_index.html rotation>)
%% 
% define rotentations by Euler angles
% 
%
%% View Code
% 
%% Syntax
%   rot = rotation.byEuler(phi1,Phi,phi2)          % Bunge convention
%   rot = rotation.byEuler(alpha,beta,gamma,'ZYZ') % Matthies convention
%   rot = rotation.byEuler(phi1,Phi,phi2,'Kocks')  % Kocks convention
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>phi1, Phi, phi2</tt>
%          </td>
%          <td>
%                <p>Euler angles in radiant</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the byEuler behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Bunge, ZXZ
%   ABG, Matthies, ZYZ
%   Roe
%   Kocks
%   Canova'</tt>
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
%             <tt>rot</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="rotation_index.html&#34;">rotation</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% rotentation_index rotentation/byMiller rotentation/byAxisAngle
% rotation/map
%