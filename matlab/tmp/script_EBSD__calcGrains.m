%% calcGrains
% (method of <EBSD_index.html EBSD>)
%% 
% grains reconstruction from 2d EBSD data
% 
%
%% View Code
% 
%% Syntax
%   grains = calcGrains(ebsd,'angle',10*degree)
%   grains = calcGrains(ebsd,'unitCell')
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
%                <p>
%                   <a href="EBSD_index.html&#34;">EBSD</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcGrains<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'threshold', 'angle'</tt>
%                   </td>
%                   <td>
%                         <p>array of threshold angles per phase of mis/disorientation in radians</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'boundary'</tt>
%                   </td>
%                   <td>
%                         <p>bounds the spatial domain ('convexhull', 'tight')</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the calcGrains behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'unitcell'</tt>
%                   </td>
%                   <td>
%                         <p>omit voronoi decomposition and treat a unitcell lattice</p>
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
%             <tt>grains</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="grain2d_index.html&#34;">grain2d</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% 
%