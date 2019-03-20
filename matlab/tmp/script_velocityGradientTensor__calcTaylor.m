%% calcTaylor
% (method of [[velocityGradientTensor_index.html,velocityGradientTensor]])
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
%             <tt>L</tt>
%          </td>
%          <td>
%                <p>[[velocityGradientTensor_index.html,velocityGradientTensor]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>sS</tt>
%          </td>
%          <td>
%                <p>[[slipSystem_index.html,slipSystem]]</p>
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

% consider uniaxial tension in (100) direction about 30 percent
F = deformationGradientTensor.uniaxial(vector3d.X,1.3)

%% 
% 

% the corresponding rate of deformation tensor becomes
L = logm(F)

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
[M,b,spin] = calcTaylor(inv(ori)*L,sS.symmetrise)

%% 
% 
%% 
