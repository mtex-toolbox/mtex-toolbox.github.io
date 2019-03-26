%% plotSO3Grid
% give a regular grid in orientation space
% 
%
%% View Code
% 
%% Syntax
%   % sections according phi2 angle
%   [S3G,S2G,phi2] = plotSO3Grid(CS,SS,'phi2')
% 
%   % sections according rotational axis / angle
%   [S3G,axes,omega,scaling] = plotSO3Grid(CS1,CS2,'axisAngle')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>CS</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="crystalSymmetry_index.html&#34;">crystalSymmetry</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>SS</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="specimenSymmetry_index.html&#34;">specimenSymmetry</a>
%                </p>
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
%             <tt>S3G</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="SO3Grid_index.html&#34;">SO3Grid</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>S2G,axes</tt>
%          </td>
%          <td>
%                <p>list of <a href="vector3d_index.html&#34;">vector3d</a>, the plotting directions</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>phi2</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>scaling</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 