%% sphericalY
% spherical harmonics of degree l
% 
%
%% View Code
% 
%% Description
% Y = sphericalY(l,vs) return a vector Y = (Y_l^-l,...,Y_l^l) of the
% spherical harmonics of degree l using the Condon-Shortley phase convention
% 
%
%% Syntax
%   Y = sphericalY(l, v)
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
%                <p>harmonic degree</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
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
%                <p>(2l+1) x length(v) matrix of function values</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% wignerD
%