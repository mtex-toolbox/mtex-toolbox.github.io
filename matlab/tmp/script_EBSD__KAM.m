%% KAM
% (method of <EBSD_index.html EBSD>)
%% 
% intragranular average misorientation angle per orientation
% 
%
%% View Code
% 
%% Syntax
% 
%   plot(ebsd,ebsd.KAM ./ degree)
% 
%   % ignore misorientation angles > threshold
%   kam = KAM(ebsd,'threshold',10*degree);
%   plot(ebsd,kam./degree)
% 
%   % ignore grain boundary misorientations
%   [grains, ebsd.grainId] = calcGrains(ebsd)
%   plot(ebsd, ebsd.KAM./degree)
% 
%   % consider also second order neigbors
%   kam = KAM(ebsd,'order',2);
%   plot(ebsd,kam./degree)
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
%                <p>@ebsd</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control KAM<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'threshold'</tt>
%                   </td>
%                   <td>
%                         <p>ignore misorientation angles larger then threshold</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'order'</tt>
%                   </td>
%                   <td>
%                         <p>consider neighbors of order n</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'max'</tt>
%                   </td>
%                   <td>
%                         <p>take not the mean but the maximum misorientation angle</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% grain2d.GOS
%