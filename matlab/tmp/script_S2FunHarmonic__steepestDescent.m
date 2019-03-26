%% steepestDescent
% (method of <S2FunHarmonic_index.html S2FunHarmonic>)
%% 
% calculates the minimum of a spherical harminc
%
%% View Code
% 
%% Syntax
%   [v,pos] = steepestDescent(sF) % the position where the minimum is atained
% 
%   [v,pos] = steepestDescent(sF,'numLocal',5) % the 5 largest local minima
% 
%   % with all options
%   [v,pos] = steepestDescent(sF, 'startingnodes')
% 

%% Output
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
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