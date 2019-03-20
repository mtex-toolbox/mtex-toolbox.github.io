%% calcTaylor
% (method of [[strainTensor_index.html,strainTensor]])
%% 
% compute Taylor factor and strain dependent orientation gradient
% 
%
%% View Code
% 
%% Syntax
%   [M,b,W] = calcTaylor(eps,sS)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>eps</tt>
%          </td>
%          <td>
%                <p>[[strainTensor_index.html,strainTensor]] list in crystal coordinates</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>sS</tt>
%          </td>
%          <td>
%                <p>[[slipSystem_index.html,slipSystem]] list in crystal coordinates</p>
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
%                <p>vector of slip rates for all slip systems</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>W</tt>
%          </td>
%          <td>
%                <p>[[spinTensor_index.html,spinTensor]]</p>
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
[M,b,W] = calcTaylor(inv(ori)*eps,sS.symmetrise)

%% 
% 
%% 
