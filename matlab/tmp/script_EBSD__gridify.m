%% gridify
% (method of <EBSD_index.html EBSD>)
%% 
% extend EBSD data to an grid
% 
%
%% View Code
% 
%% Description
% matrix shaped regular grid. No interpolation is done herby. Grid points
% in the regular grid that do not have a correspondence in the regular grid
% are set to NaN. Having the EBSD data in matrix form has several
% advantages:
% 
% * required for <OrientationGradient.html gradient>,
% <EBSDsquare_curvature.html curvature> and <GND> computation
% * much faster visualisation of big maps
% * much faster computation of the kernel average misorientation
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
%                <p>an <a href="EBSD_index.html&#34;">EBSD</a> data set with a non regular grid</p>
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
%% Example
%% 
% 

mtexdata twins
ebsdMg = ebsd('Magnesium').gridify
plot(ebsdMg, ebsdMg.orientations)

%% 
% 
