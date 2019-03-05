%% rotate_outer
% (method of [[tensor_index.html,tensor]])
%% 
% rotate a tensor by a list of rotations
% 
%
%% View Code
% 
%% Description
% 
% $$T_{rst} = T_{ijk} R_{ri} R_{sj} R_{tk}$$
% 
%
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>T = rotate_outer(T,R,'param1',val1,'param2',val2)</tt>
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
%             <tt>T</tt>
%          </td>
%          <td>
%                <p>[[tensor_index.html,tensor]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>R</tt>
%          </td>
%          <td>
%                <p>[[rotation_index.html,rotation]] or rotation matrix or a list of them</p>
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
%             <tt>T</tt>
%          </td>
%          <td>
%                <p>rotated [[tensor_index.html,tensor]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 