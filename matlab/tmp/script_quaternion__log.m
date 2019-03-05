%% log
% (method of [[quaternion_index.html,quaternion]])
%% 
% the logarithmic map that translates a rotation into a rotation vector
% 
%
%% View Code
% 
%% Syntax
%   v = log(q) % rotation vector with reference to the identical rotation
%   v = log(q,q_ref) % rotation vector with reference q_ref
% 
%   v = loq(q,'right')
%   v = loq(q,'left')
% 

%% Input
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
%       <tr>
%          <td width="100px">
%             <tt>q_ref</tt>
%          </td>
%          <td>
%                <p>[[quaternion_index.html,quaternion]]</p>
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
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% quaternion/logm vector3d/exp spinTensor_index
%