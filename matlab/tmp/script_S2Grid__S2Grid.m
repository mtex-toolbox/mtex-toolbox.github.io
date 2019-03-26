%% S2Grid
% (method of <S2Grid_index.html S2Grid>)
%
%% View Code
% 
%% Syntax
%   S2Grid(theta,rho)      % fills a Sphere with N--nodes
%   regularS2Grid('resolution',5*degree)     % construct regular polar and azimuthal spacing
%   equispacedS2Grid('resolution',5*degree)  % construct equispaced nodes
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>nodes</tt>
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
%          <td>Parameters and values that control S2Grid<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'POINTS'</tt>
%                   </td>
%                   <td>
%                         <p>[nrho,ntheta] number of points to be generated</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'RESOLUTION'</tt>
%                   </td>
%                   <td>
%                         <p>resolution of a equispaced grid</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'HEMISPHERE'</tt>
%                   </td>
%                   <td>
%                         <p>'lower', 'uper', 'complete', 'sphere', 'identified'}</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'THETA'</tt>
%                   </td>
%                   <td>
%                         <p>theta angle</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'RHO'</tt>
%                   </td>
%                   <td>
%                         <p>rho angle</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MINRHO'</tt>
%                   </td>
%                   <td>
%                         <p>starting rho angle (default 0)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MAXRHO'</tt>
%                   </td>
%                   <td>
%                         <p>maximum rho angle (default 2*pi)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MINTHETA'</tt>
%                   </td>
%                   <td>
%                         <p>starting theta angle (default 0)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'MAXTHETA'</tt>
%                   </td>
%                   <td>
%                         <p>maximum theta angle (default pi)</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the S2Grid behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'REGULAR'</tt>
%                   </td>
%                   <td>
%                         <p>generate a regular grid</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'EQUISPACED'</tt>
%                   </td>
%                   <td>
%                         <p>generate equidistribution</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ANTIPODAL'</tt>
%                   </td>
%                   <td>
%                         <p>include [[AxialDirectional.html,antipodal symmetry]]</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'PLOT'</tt>
%                   </td>
%                   <td>
%                         <p>generate plotting grid</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'NO_CENTER'</tt>
%                   </td>
%                   <td>
%                         <p>ommit point at center</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'RESTRICT2MINMAX'</tt>
%                   </td>
%                   <td>
%                         <p>restrict margins to min / max</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example

regularS2Grid('points',[72 19])

%% 
% 

regularS2Grid('resolution',[5*degree 2.5*degree])

%% 
% 

equispacedS2Grid('resolution',5*degree,'maxrho',pi)
plot(ans)

%% 
% 

%% See also
% vector3d/vector3d
%