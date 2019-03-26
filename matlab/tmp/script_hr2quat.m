%% hr2quat
% arbitrary quaternion q with q * h = r
% 
%
%% View Code
% 
%% Description
% The method *hr2quat* defines a [[quaternion_index.html,rotation]] |q|
% by a crystal direction |h| and a specimen direction |r| such that
% |q * h = r|
% 
%
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>q = hr2quat(h,r)</tt>
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
%             <tt>h</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="Miller_index.html&#34;">Miller</a> or <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>r</tt>
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
%             <tt>q</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="quaternion_index.html&#34;">quaternion</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% quaternion_index quaternion/quaternion axis2quat Miller2quat
% vec42quat euler2quat
%