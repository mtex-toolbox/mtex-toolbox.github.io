%% BinghamS2
% (method of [[BinghamS2_index.html,BinghamS2]])
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>BS2 = BinghamS2(Z,a)</tt>
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
%             <tt>Z</tt>
%          </td>
%          <td>
%                <pre>smoothing parameters;
%   Z(1)&gt;=Z(2)&gt;=Z(3), Z(3)&lt;0
%   Z(1)=Z(2)  rotationally symmetric unimodal distribution
%   Z(1)&lt;&lt;Z(2) partial girdle distribution</pre>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>a</tt>
%          </td>
%          <td>
%                <pre>principle axes (3 orthogonal vector3d) i.e.
%   vector3d(rotation.matrix)</pre>
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
%             <tt>BS2</tt>
%          </td>
%          <td>
%                <p>[[BinghamS2_index.html,BinghamS2]] spherical Bingham distribution</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 