%% byEuler
% (method of [[orientation_index.html,orientation]])
%% 
% define orientations by Euler angles
% 
%
%% View Code
% 
%% Syntax
%   ori = orientation.byEuler(phi1,Phi,phi2,CS,SS) % Bunge convention
%   ori = orientation.byEuler(alpha,beta,gamma,'ZYZ',CS,SS) % Matthies convention
%   ori = orientation.byEuler(phi1,Phi,phi2,'Kocks',CS,SS) % Kocks convention
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
%             <tt>CS</tt>
%          </td>
%          <td>
%                <p>[[crystalSymmetry_index.html,crystalSymmetry]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>SS</tt>
%          </td>
%          <td>
%                <p>[[specimenSymmetry_index.html,specimenSymmetry]]</p>
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
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>[[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% orientation_index orientation/byMiller orientation/byAxisAngle
% orientation/map
%