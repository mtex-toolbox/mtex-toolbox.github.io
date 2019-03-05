%% mat2quat
% converts direction cosine matrix to quaternion
% 
%
%% View Code
% 
%% Description
% Wertz says to the algo similar to this with largest divisor
%       q4 = 1/2*sqrt((1+mat(1,1)+mat(2,2)+mat(3,3)));
% Eqn 12-14a - c
%  Quat(1) = (mat(2,3)-mat(3,2))/q4/4;
%  Quat(2) = (mat(3,1)-mat(1,3))/q4/4;
%  Quat(3) = (mat(1,2)-mat(2,1))/q4/4;
%  Quat(4) = q4
%
%% Syntax
%   q = mat2quat(mat)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>mat</tt>
%          </td>
%          <td>
%                <p>vector of matrixes</p>
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
%             <tt>q</tt>
%          </td>
%          <td>
%                <p>[[quaternion_index.html,quaternion]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% 
% quaternion_matrix Euler axis2quat hr2quat
% 
%