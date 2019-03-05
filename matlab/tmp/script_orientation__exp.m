%% exp
% (method of [[orientation_index.html,orientation]])
%% 
% exponential function
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>ori_2 = exp(ori_1,v)
%   ori_2 = exp(ori_1,S)</tt>
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
%             <tt>ori_1</tt>
%          </td>
%          <td>
%                <p>[[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]] axis of rotation scaled by the angle of rotation</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>S</tt>
%          </td>
%          <td>
%                <p>skew symmetry [[tensor_index.html,tensor]]</p>
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
%             <tt>ori_2</tt>
%          </td>
%          <td>
%                <p>[[orientation_index.html,orientation]] rotate ori_1 about axis v with angle norm(v)</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 