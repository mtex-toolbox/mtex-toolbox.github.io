%% grad
% (method of [[ODF_index.html,ODF]])
%% 
% gradient of odf at orientation ori
% 
%
%% View Code
% 
%% Syntax
% 
%   g = odf.grad(ori) % compute the gradient
% 
%   % go 5 degree in direction of the gradient
%   ori_new = exp(ori,5*degree*normalize(g))
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>odf</tt>
%          </td>
%          <td>
%                <p>[[ODF_index.html,ODF]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>[[orientation_index.html,orientation]]</p>
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
%             <tt>g</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]] gradient of the ODF at the orientations ori</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ODF/eval orientation/exp
%