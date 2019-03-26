%% steepestDescent
% (method of <S2FunHarmonicSym_index.html S2FunHarmonicSym>)
%% 
% calculates the minimum of a spherical harminc
%
%% View Code
% 
%% Syntax
%   [f,pos] = steepestDescent(sF) % the position where the minimum is atained
% 
%   [f,pos] = steepestDescent(sF,'numLocal',5) % the 5 largest local minima
% 
%   % with all options
%   [f,pos] = steepestDescent(sF, 'startingnodes')
% 

%% Output
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>f</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>pos</tt>
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