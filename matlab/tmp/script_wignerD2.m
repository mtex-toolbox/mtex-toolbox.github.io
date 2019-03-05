%% wignerD2
% spherical harmonics of degree l
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>D = wignerD2(l, g)</tt>
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
%             <tt>l</tt>
%          </td>
%          <td>
%                <p>degree</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>theta</tt>
%          </td>
%          <td>
%                <p>azimuth angle</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>rho</tt>
%          </td>
%          <td>
%                <p>polar</p>
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
%             <tt>Y</tt>
%          </td>
%          <td>
%                <p>(2l+1) x numel(theta,rho) matrix of function values</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% wignerD sphericalY
%