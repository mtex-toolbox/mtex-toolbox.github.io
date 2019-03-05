%% plot
% (method of [[vector3d_index.html,vector3d]])
%% 
% plot vectors as two dimensional projections on the sphere
% 
%
%% View Code
% 
%% Syntax
%   plot(v)
%   plot(v,value)
%   plot(v,rgb)
%   plot(v,'MarkerSize',10)
%   plot(v,'contourf')
%   plot(v,'contour')
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
%             <tt>value</tt>
%          </td>
%          <td>
%                <p>values to be displayed</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>rgb</tt>
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
%                      <tt>'Marker
%   MarkerSize
%   MarkerFaceColor
%   MarkerEdgeColor'</tt>
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
%                      <tt>'smooth'</tt>
%                   </td>
%                   <td>
%                         <p>plot point cloud as colored density</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'contourf'</tt>
%                   </td>
%                   <td>
%                         <p>plot point cloud as filled contours</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'contour'</tt>
%                   </td>
%                   <td>
%                         <p>plot point cloud as contours</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 