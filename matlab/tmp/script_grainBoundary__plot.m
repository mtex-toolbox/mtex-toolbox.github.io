%% plot
% (method of [[grainBoundary_index.html,grainBoundary]])
%% 
% plot grain boundaries
% 
% The function plots grain boundaries.
% 
%
%% View Code
% 
%% Syntax
%   plot(grains.boundary)
%   plot(grains.innerBoundary,'linecolor','r')
%   plot(gB('Forsterite','Forsterite'),gB('Forsterite','Forsterite').misorientation.angle)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>grains</tt>
%          </td>
%          <td>
%                <p>[[grain2d_index.html,grain2d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>gB</tt>
%          </td>
%          <td>
%                <p>[[grainBoundary_index.html,grainBoundary]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control plot<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'linewidth
%   linecolor'</tt>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 