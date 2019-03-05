%% gridify
% (method of [[EBSD_index.html,EBSD]])
%% 
% extend EBSD data to an grid
% 
%
%% View Code
% 
%% Description
% This function transforms EBSD on non regular grids into regular grids. No
% interpolation is done herby. Grid points in the regular grid that do not
% have a correspondence in the regular grid are set to NaN.
% 
%
%% Syntax
%   [ebsdGrid,newId] = gridify(ebsd)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>ebsd</tt>
%          </td>
%          <td>
%                <p>an [[EBSD_index.html,EBSD]] data set with a non regular grid</p>
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
%             <tt>ebsd</tt>
%          </td>
%          <td>
%                <p>@EBSDSquare data on a regular grid</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>newId</tt>
%          </td>
%          <td>
%                <p>closest regular grid point for every non regular grid point</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 