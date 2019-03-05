%% plotIPDF
% (method of [[orientation_index.html,orientation]])
%% 
% plot orientations into inverse pole figures
% 
%
%% View Code
% 
%% Syntax
%   plotIPDF(ori,[r1,r2,r3])
%   plotIPDF(ori,[r1,r2,r3],'points',100)
%   plotIPDF(ori,[r1,r2,r3],'points','all')
%   plotIPDF(ori,[r1,r2,r3],'contourf')
%   plotIPDF(ori,[r1,r2,r3],'antipodal')
%   plotIPDF(ori,data,[r1,r2,r3])
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
%                <p>[[EBSD_index.html,EBSD]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>r</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]] specimen directions</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control plotIPDF<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'RESOLUTION'</tt>
%                   </td>
%                   <td>
%                         <p>resolution of the plots</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'property'</tt>
%                   </td>
%                   <td>
%                         <p>user defined colorcoding</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MarkerSize'</tt>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MarkerFaceColor'</tt>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MarkerEdgeColor'</tt>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the plotIPDF behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'antipodal'</tt>
%                   </td>
%                   <td>
%                         <p>include [[AxialDirectional.html,antipodal symmetry]]</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'complete'</tt>
%                   </td>
%                   <td>
%                         <p>ignore fundamental region</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'upper'</tt>
%                   </td>
%                   <td>
%                         <p>restrict to upper hemisphere</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'lower'</tt>
%                   </td>
%                   <td>
%                         <p>restrict to lower hemisphere</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'filled'</tt>
%                   </td>
%                   <td>
%                         <p>fill the marker with current color</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% S2Grid/plot savefigure Plotting Annotations_demo ColorCoding_demo PlotTypes_demo
% SphericalProjection_demo
%