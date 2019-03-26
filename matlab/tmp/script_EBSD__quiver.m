%% quiver
% (method of <EBSD_index.html EBSD>)
%% 
% plot directions at ebsd centers
% 
%
%% View Code
% 
%% Syntax
%   quiver(ebsd,dir,'linecolor','r')
% 
%   mtexdata small
%   quiver(ebsd,ebsd.rotations.axis)
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
%                <p>@ebsd</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>dir</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
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