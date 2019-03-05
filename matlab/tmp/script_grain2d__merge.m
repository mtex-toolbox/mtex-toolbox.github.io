%% merge
% (method of [[grain2d_index.html,grain2d]])
%% 
% merge grains along special grain boundaries
% 
% Whenever two grains share a grain boundary that is in the list |gB| both
% grains are merged and the common grain boundary is removed. All the
% properties of the unmerged grains are removed in the merged grains, since
% there is no common convention for a mean. In case of merging allong small
% angle grain boundaries one can force MTEX to compute a new
% meanOrientation using the option |calcMeanOrientation|.
% 
%
%% View Code
% 
%% Syntax
%   [grainsMerged,parentId] = merge(grains,gB)
% 
%   % compute new meanOrientations for the grains
%   [grainsMerged,parentId] = merge(grains,gB,'calcMeanOrientation')
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
%             <tt>boundary</tt>
%          </td>
%          <td>
%                <p>[[grainBoundary_index.html,grainBoundary]]</p>
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
%             <tt>grainsMerged</tt>
%          </td>
%          <td>
%                <p>[[grain2d_index.html,grain2d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>parentId</tt>
%          </td>
%          <td>
%                <p>a list of the same size as grains containing the ids of the merged grains</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
% 

mtexdata small
grains = smooth(calcGrains(ebsd))

%% 
% 
%% 
