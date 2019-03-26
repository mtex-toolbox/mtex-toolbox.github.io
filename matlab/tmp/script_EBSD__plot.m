%% plot
% (method of <EBSD_index.html EBSD>)
%% 
% spatial EBSD plot
% 
%
%% View Code
% 
%% Syntax
% 
%   % colorize according to phase
%   plot(ebsd)
% 
%   % colorize according to arbitrary value - here MAD
%   plot(ebsd,ebsd.mad)
% 
%   % colorize according to orientation
%   plot(ebsd('phaseName'),ebsd('phaseName').orientation)
% 
%   % colorize according to custom color
%   oM = ipfColorKey(ebsd('phaseName'))
%   color = oM.orientation2color(ebsd('phaseName').orientations);
%   plot(ebsd('phaseName'),color)
% 
%   % specify the color directly and show in Legend
%   badMAD = ebsd.mad > 1;
%   plot(ebsd(badMAD),'faceColor','black,'DisplayName','bad values')
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
%             <tt>color</tt>
%          </td>
%          <td>
%                <p>length(ebsd) x 3 vector of RGB values</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control plot<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'micronbar'</tt>
%                   </td>
%                   <td>
%                         <p>'on'/'off'</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'DisplayName'</tt>
%                   </td>
%                   <td>
%                         <p>add a legend entry</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the plot behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'points'</tt>
%                   </td>
%                   <td>
%                         <p>plot dots instead of unitcells</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
% 

mtexdata forsterite
plot(ebsd)

%% 
% 

% colorize accoding to orientations
plot(ebsd('Forsterite'),ebsd('Forsterite').orientations)

%% 
% 

% colorize according to MAD
plot(ebsd,ebsd.mad,'micronbar','off')

%% 
% 

%% See also
% EBSDSpatialPlots
%