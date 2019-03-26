%% calcInvTaylor
% (method of <orientation_index.html orientation>)
%% 
% Taylor factor from orientation gradient
% 
%
%% View Code
% 
%% Syntax
%   [M,b,eps] = calcInvTaylor(mori,sS)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>mori</tt>
%          </td>
%          <td>
%                <p>mis&lt;orientation_index.html" orientation&gt;</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>sS</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="slipSystem_index.html&#34;">slipSystem</a> list in crystal coordinates</p>
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
%             <tt>M</tt>
%          </td>
%          <td>
%                <p>taylor factor</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>b</tt>
%          </td>
%          <td>
%                <p>coefficients for the acive slip systems</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>eps</tt>
%          </td>
%          <td>
%                <p>strain <a href="tensor_index.html&#34;">tensor</a> list in crystal coordinates</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
% 

% define 10 percent strain
eps = 0.1 * strainTensor(diag([1 -0.75 -0.25]))

%% 
% 

% define a crystal orientation
cs = crystalSymmetry('cubic')
ori = orientation.byEuler(0,30*degree,15*degree,cs)

%% 
% 

% define a slip system
sS = slipSystem.fcc(cs)

%% 
% 

% compute the Taylor factor
[M,b,mori] = calcTaylor(inv(ori)*eps,sS.symmetrise)

%% 
% 
