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
%                <p>[[SO3Grid_index.html,SO3Grid]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>S2G,axes</tt>
%          </td>
%          <td>
%                <p>list of [[vector3d_index.html,vector3d]], the plotting directions</p>
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