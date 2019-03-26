%% scatter
% (method of <orientation_index.html orientation>)
%% 
% plots orientations in 3d
% 
%
%% View Code
% 
%% Syntax
%   scatter(ori)
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
%                <p>
%                   <a href="orientation_index.html&#34;">orientation</a>
%                </p>
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
%                      <tt>'axisAngle'</tt>
%                   </td>
%                   <td>
%                         <p>axis angle projection</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Rodrigues'</tt>
%                   </td>
%                   <td>
%                         <p>rodrigues parameterization</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Euler'</tt>
%                   </td>
%                   <td>
%                         <p>3d Bunge Euler plot</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'points'</tt>
%                   </td>
%                   <td>
%                         <p>number of orientations to be plotted</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'center'</tt>
%                   </td>
%                   <td>
%                         <p>orientation center</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the scatter behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ignoreFundamentalRegion'</tt>
%                   </td>
%                   <td>
%                         <p>plot orientation as they are</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'project2FundamentalRegion'</tt>
%                   </td>
%                   <td>
%                         <p>project orientations to fundamentalRegion (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'restrict2FundamentalRegion'</tt>
%                   </td>
%                   <td>
%                         <p>ignore all orientations outside the fundamentalRegion</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% vector3d/text orientation/plot
%