%% linearCompressibility
% (method of [[stiffnessTensor_index.html,stiffnessTensor]])
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
%          <tt>varargout = linearCompressibility(C,'param1',val1,'param2',val2)</tt>
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
%             <tt>C</tt>
%          </td>
%          <td>
%                <p>elastic [[stiffnessTensor_index.html,stiffnessTensor]]</p>
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