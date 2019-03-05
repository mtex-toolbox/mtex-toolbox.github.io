%% calcMeanDirection
% (method of [[grainBoundary_index.html,grainBoundary]])
%% 
% compute a smoothed direction that ignores staircasing
% 
%
%% View Code
% 
%% Description
% This is very similar to direction with the only difference that it takes
% the average over 2*n+1 directions
% 
%
%% Syntax
%   dir = calcMeanDirection(gB)
%   dir = calcMeanDirection(gB,2)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>gB</tt>
%          </td>
%          <td>
%                <p>[[grainBoundary_index.html,grainBoundary]]</p>
%                <p>tput</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>dir</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 