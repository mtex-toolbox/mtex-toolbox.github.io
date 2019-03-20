%% geodesic
% (method of [[quaternion_index.html,quaternion]])
%% 
% Calculats the rotation, which is described by the geodesic
% gamma(t)_{rot1,rot2} from rot1 to rot2 at the location t,
% for vectors of n rotations.
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>rot = geodesic(rot1,rot2,t)</tt>
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
%             <tt>rot1</tt>
%          </td>
%          <td>
%                <p>n dimensional vector of rotations</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>rot2</tt>
%          </td>
%          <td>
%                <p>n dimensional vector of rotations</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>t</tt>
%          </td>
%          <td>
%                <p>n dimensional vector in [0,1]^n</p>
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
%             <tt>rot</tt>
%          </td>
%          <td>
%                <p>n dimensional vector of rotations</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 