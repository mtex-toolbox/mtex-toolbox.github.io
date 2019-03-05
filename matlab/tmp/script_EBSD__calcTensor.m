%% calcTensor
% (method of [[EBSD_index.html,EBSD]])
%% 
% compute the average tensor for an EBSD data set
% 
%
%% View Code
% 
%% Syntax
%   % applies a tensor on a given phase
%   [TVoigt, TReuss, THill] = calcTensor(ebsd('phase2'),T_phase2)
% 
%   % applies each tensor given in order of input to each phase
%   [TVoigt, TReuss, THill] = calcTensor(ebsd,T_phase1,T_phase2,...)
% 
%   % returns the specified  tensor
%   THill = calcTensor(ebsd,T_phase1,T_phase2,'Hill')
% 
%   % geometric mean instead of arithmetric one
%   TGeom = calcTensor(ebsd,T_phase1,T_phase2,'geometricMean')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>ebsd</tt>
%          </td>
%          <td>
%                <p>[[EBSD_index.html,EBSD]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>T_phaseN</tt>
%          </td>
%          <td>
%                <p>[[tensor_index.html,tensor]] for the N-th phase</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcTensor<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Voigt'</tt>
%                   </td>
%                   <td>
%                         <p>Voigt mean</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Reuss'</tt>
%                   </td>
%                   <td>
%                         <p>Reuss mean</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Hill'</tt>
%                   </td>
%                   <td>
%                         <p>Hill mean</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'geometricMean'</tt>
%                   </td>
%                   <td>
%                         <p>eometric mean</p>
%                   </td>
%                </tr>
%             </table>
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
%             <tt>T</tt>
%          </td>
%          <td>
%                <p>[[tensor_index.html,tensor]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% 
%