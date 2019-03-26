%% spatialProfile
% (method of <EBSD_index.html EBSD>)
%% 
% select EBSD data along line segments
% 
%
%% View Code
% 
%% Syntax
% 
%   ebsdLine = spatialProfile(ebsd,[xStart,xEnd],[yStart yEnd])
% 
%   [ebsdLine,dist] = spatialProfile(ebsd,x,y)
% 
%   xy = ginput(2)
%   [ebsdLine,dist] = spatialProfile(ebsd,xy)
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
%                <p>
%                   <a href="EBSD_index.html&#34;">EBSD</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>xStart, xEnd, yStart, yEnd</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>x, y</tt>
%          </td>
%          <td>
%                <p>coordinates of the line segments</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>xy</tt>
%          </td>
%          <td>
%                <p>list of spatial coordinates <tt>[x(:) y(:)]</tt>
%                </p>
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
%             <tt>ebsdLine</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="EBSD_index.html&#34;">EBSD</a> restrcited to the line of interest</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>dist</tt>
%          </td>
%          <td>
%                <p>double distance along the line to the initial point</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
% 

% import data
mtexdata twins

%% 
% 

% plot data
plot(ebsd('indexed'),ebsd('indexed').orientations)

%% 
% 

% select line coordinates
x = [15.5 27]; y = [20.5 11];

%% 
% 

% draw line with some transluency
line(x,y,'color',[0.5 0.5 0.5 0.5],'linewidth',10)

%% 
% 

% restrict ebsd data to this line
[ebsdLine,dist] = spatialProfile(ebsd,x,y);

%% 
% 

% extract orientations
ori = ebsdLine.orientations;

%% 
% 
%% 
