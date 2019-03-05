%% quiver
% (method of [[grain2d_index.html,grain2d]])
%% 
% plot directions at grain centers
% 
%
%% View Code
% 
%% Syntax
%   quiver(grains,dir,'linecolor','r')
% 
%   mtexdata fo
%   grains = calcGrains(ebsd('indexed'))
%   quiver(grains,grains.meanRotation.axis,'color','r')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>grains</tt>
%          </td>
%          <td>
%                <p>[[grain2d_index.html,grain2d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>dir</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control quiver<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'antipodal'</tt>
%                   </td>
%                   <td>
%                         <p>plot directions or axes</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'maxHeadSize'</tt>
%                   </td>
%                   <td>
%                         <p>size of the arrow</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 