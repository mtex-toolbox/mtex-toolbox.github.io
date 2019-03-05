%% polarCoordinates
% (method of [[sphericalRegion_index.html,sphericalRegion]])
%% 
% compute polar coordinates of with respect to a spherical region
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[r,rho] = polarCoordinates(sR,v,center,ref,'param1',val1,'param2',val2)</tt>
%       </div>
%    </div>
% </html>
% 
%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>sR</tt>
%          </td>
%          <td>
%                <p>[[sphericalRegion_index.html,sphericalRegion]]</p>
%          </td>
%       </tr>
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
%             <tt>center</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
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
%             <tt>r</tt>
%          </td>
%          <td>
%                <p>relative distance to the center</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>rho</tt>
%          </td>
%          <td>
%                <p>angle with respect to the center</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 