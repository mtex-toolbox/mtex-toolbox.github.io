%% hist
% (method of [[grain2d_index.html,grain2d]])
%% 
% plot a grain size histogram
% 
%
%% View Code
% 
%% Syntax
%   hist(grains)
%   hist(grains,n) % specify the number of bins
% 
%   % use an arbitrary property for the histogramm
%   hist(grains,grains.equivalentRadius)
% 
%   binId = hist(grains) % returns the bin for each grain
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
%             <tt>n</tt>
%          </td>
%          <td>
%                <p>number of bins, default ist 15</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 