%% scatter
% (method of [[vector3d_index.html,vector3d]])
%
%% View Code
% 
%% Syntax
%   scatter(v)              % plot the directions v
%   scatter(v,data)         % colorize directions according to data
%   scatter(v,'label',text) % plot text below markers
%   scatter(v,'label',text,'textaboveMarker') % plot text above markers
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>data</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>rgb</tt>
%          </td>
%          <td>
%                <p>a list of rgb color values</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control scatter<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Marker'</tt>
%                   </td>
%                   <td>
%                         <p>'s','o','diamont','p'</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MarkerFaceColor'</tt>
%                   </td>
%                   <td>
%                         <p>'r','g','w','k','b'</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MarkerEdgeColor'</tt>
%                   </td>
%                   <td>
%                         <p>'r','g','w','k','b'</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MarkerColor'</tt>
%                   </td>
%                   <td>
%                         <p>shortcut for the above two</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MarkerSize'</tt>
%                   </td>
%                   <td>
%                         <p>size of the markers in pixel</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MarkerAlpha'</tt>
%                   </td>
%                   <td>
%                         <p>transperency setting</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MarkerEdgeAlpha'</tt>
%                   </td>
%                   <td>
%                         <p>transperency setting</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MarkerFaceAlpha'</tt>
%                   </td>
%                   <td>
%                         <p>transperency setting</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'DynamicMarkerSize'</tt>
%                   </td>
%                   <td>
%                         <p>scale marker size when plot is resized</p>
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
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%"/>
% </html>
% 
%% See also
% vector3d/text
%