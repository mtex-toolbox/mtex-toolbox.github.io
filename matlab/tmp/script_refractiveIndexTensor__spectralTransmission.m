%% spectralTransmission
% (method of [[refractiveIndexTensor_index.html,refractiveIndexTensor]])
%
%% View Code
% 
%% Syntax
%   rgb = spectralTransmission(rI,vprop,p,thickness)
% 
%   rgb = spectralTransmission(rI,vprop,p,thickness,'polarizationDirection',p)
% 
%   rgb = spectralTransmission(rI,vprop,p,thickness,'phi',phi)
% 
%   plot(rI.spectralTransmission(thickness))
% 
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>rI</tt>
%          </td>
%          <td>
%                <p>[[refractiveIndexTensor_index.html,refractiveIndexTensor]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>vprop</tt>
%          </td>
%          <td>
%                <p>propagation direction</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>thickness</tt>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>p</tt>
%          </td>
%          <td>
%                <p>direction of the polarizer</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>tau</tt>
%          </td>
%          <td>
%                <p>angle between polarizer and analyzer</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example

thickness = 20000;
rI = refractiveIndexTensor.calcite
plot(rI.spectralTransmission(thickness),'rgb','3d')

%% 
% 
