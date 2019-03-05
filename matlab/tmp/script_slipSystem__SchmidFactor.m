%% SchmidFactor
% (method of [[slipSystem_index.html,slipSystem]])
%% 
% compute the Schmid factor
% 
%
%% View Code
% 
%% Syntax
% 
%   SFfun = SchmidFactor(sS) % returns spherical function
%   SF = SchmidFactor(sS,v)
%   SF = SchmidFactor(sS,sigma)
%   SF = SchmidFactor(sS,sigma,'relative')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>sS</tt>
%          </td>
%          <td>
%                <p>list of [[slipSystem_index.html,slipSystem]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]] list of tension direction</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>sigma</tt>
%          </td>
%          <td>
%                <p>[[stressTensor_index.html,stressTensor]]</p>
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
%             <tt>SFfun</tt>
%          </td>
%          <td>
%                <p>size(sS) x 1 list of [[S2FunHarmonic_index.html,S2FunHarmonic]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>SF</tt>
%          </td>
%          <td>
%                <p>size(sS) x size(sigma) matrix of Schmid factors</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 