%% plot
% (method of [[grain2d_index.html,grain2d]])
%% 
% colorize grains
% 
%
%% View Code
% 
%% Syntax
%   plot(grains)          % colorize by phase
%   plot(grains,property) % colorize by property
%   plot(grains,cS)       % visualize crystal shape
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
%             <tt>cS</tt>
%          </td>
%          <td>
%                <p>[[crystalShape_index.html,crystalShape]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>PatchProperty</tt>
%          </td>
%          <td>
%                <p>see documentation of patch objects for manipulating the              apperance, e.g. 'EdgeColor'</p>
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
%                      <tt>'noBoundary'</tt>
%                   </td>
%                   <td>
%                         <p>do not plot boundaries</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'displayName'</tt>
%                   </td>
%                   <td>
%                         <p>name used in legend</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% EBSD/plot grainBoundary/plot
%