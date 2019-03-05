%% plotPDF
% (method of [[orientation_index.html,orientation]])
%% 
% plot orientations into pole figures
% 
%
%% View Code
% 
%% Syntax
%   plotPDF(ori,[h1,h2,h3])
%   plotPDF(ori,[h1,h2,h3],'points',100)
%   plotPDF(ori,[h1,h2,h3],'points','all')
%   plotPDF(ori,[h1,h2,h3],'contourf')
%   plotPDF(ori,[h1,h2,h3],'antipodal')
%   plotPDF(ori,[h1,h2,h3],'superposition',{1,[1.5 0.5]})
%   plotPDF(ori,data,[h1,h2,h3])
% 

%% Input
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
%       <tr>
%          <td width="100px">
%             <tt>h</tt>
%          </td>
%          <td>
%                <p>[[Miller_index.html,Miller]] crystallographic directions</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control plotPDF<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'superposition'</tt>
%                   </td>
%                   <td>
%                         <p>plot superposed pole figures</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'points'</tt>
%                   </td>
%                   <td>
%                         <p>number of points to be plotted</p>
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
%          <td>Options that control the plotPDF behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'noSymmetry'</tt>
%                   </td>
%                   <td>
%                         <p>ignore symmetricaly equivalent points</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'antipodal'</tt>
%                   </td>
%                   <td>
%                         <p>include <a href="AxialDirectional.html">antipodal symmetry</a>
%                         </p>
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
% orientation/plotIPDF S2Grid/plot savefigure
% Plotting Annotations_demo ColorCoding_demo PlotTypes_demo
% SphericalProjection_demo
%