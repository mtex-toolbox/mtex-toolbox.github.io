%% linearCompressibility
% (method of [[complianceTensor_index.html,complianceTensor]])
%% 
% computes the linear compressibility of an elasticity tensor
% 
%
%% View Code
% 
%% Description
% 
% $$\beta(x) = S_{ijkk} x_i x_j$$
% 
%
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>beta = linearCompressibility(S,x)</tt>
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
%             <tt>S</tt>
%          </td>
%          <td>
%                <p>elastic [[complianceTensor_index.html,complianceTensor]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>x</tt>
%          </td>
%          <td>
%                <p>list of [[vector3d_index.html,vector3d]]</p>
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
%             <tt>beta</tt>
%          </td>
%          <td>
%                <p>linear compressibility in directions v</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 