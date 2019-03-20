%% Shape Parameters
%% First Steps and Function Overview
% Get in touch with grains.
%
%% Grain reconstruction from EBSD data
%
% So far grains can be exclusively computed from EBSD data using the command
% <EBSD.calcGrains.html calcGrains>. In order to demonstrate grain
% reconstruction we import some EBSD data

mtexdata forsterite
plotx2east

% plot the Forsterite phase colorized according to orientation
plot(ebsd('fo'),ebsd('fo').orientations)


%%
% When reconstructing grain there are two basic ways how to deal with not
% indexed measurements. The simplest way is to keep the not indexed pixels
% separately, i.e., do not assign them to any indexed grain.

[grains, ebsd.grainId] = calcGrains(ebsd,'angle',5*degree)

%%
% We observe that there are not only grains of specific phases but also not
% indexed grains. Let's add the grain boundaries to the previous plot.

hold on
plot(grains.boundary)
hold off

%%
% The resulting grains contain a lot of holes and one-pixel grains. The
% second way is to assign not indexed pixels to surrounding grains. In MTEX
% this is done if the not indexed data are removed from the measurements,
% i.e.

ebsd = ebsd('indexed') % this removes all not indexed data
[grains, ebsd.grainId] = calcGrains(ebsd,'angle',5*degree)


%%
% Now, there are no not indexed grains computed. Let's visualize the result

% plot the orientation data of the Forsterite phase
plot(ebsd('fo'),ebsd('fo').orientations)

% plot the grain boundary on top of it
hold on
plot(grains.boundary)
hold off


% smooth the grains
grains = smooth(grains);

% plot the orientation data of the Forsterite phase
plot(ebsd('fo'),ebsd('fo').orientations)

% plot the grain boundary on top of it
hold on
plot(grains.boundary)
hold off

%% Area, Perimeter, Diameter


%% Holes


%% Neighbours


%% Fitted Ellipse


%% 




%% Convexity 
%
% pari



%% Grain properties
%
% Grains are stored as a long list of several properties. Please find
% below a table of most of the properties that are stored or can be
% computed for grains
%
% 
% <html>
%    <table class="usertable">
%       <tr>
%          <td>
%                <p>
%                   <a href="grain2d.area.html">
%                      <b>grains.area</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>grain area in square <a href="grain2d.index.html">grains.scanUnit</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grain2d.aspectRatio.html">
%                      <b>grains.aspectRatio</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>grain length / grain width</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grainBoundary.html">
%                      <b>grains.boundary</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>list of boundary segments</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grain2d.boundarySize.html">
%                      <b>grains.boundarySize</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>number of boundary segments</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grain2d.paris.html">
%                      <b>grains.paris</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>area difference between grain and its convex hull</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grain2d.centroid.html">
%                      <b>grains.centroid</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>x,y coordinates of the barycenter of the grain</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <b>grains.CS</b>
%                </p>
%          </td>
%          <td>
%                <p>crystal symmetry (single phase only)</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grain2d.diameter.html">
%                      <b>grains.diameter</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>diameter in <a href="grain2d.index.html">grains.scanUnit</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grain2d.equivalentPerimeter.html">
%                      <b>grains.equivalentPerimeter</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>the perimeter of the fitted ellipse</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grain2d.equivalentRadius.html">
%                      <b>grains.equivalentRadius</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>the radius of the fitted ellipse</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <b>grains.GOS</b>
%                </p>
%          </td>
%          <td>
%                <p>grain orientation spread</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <b>grains.grainSize</b>
%                </p>
%          </td>
%          <td>
%                <p>number of measurements per grain</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grain2d.hasHole.html">
%                      <b>grains.hasHole</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>check for inclusions</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <b>grains.id</b>
%                </p>
%          </td>
%          <td>
%                <p>grain id</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grainBoundary.html">
%                      <b>grains.innerBoundary</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>list of inner boundary segments</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <b>grains.meanOrientation</b>
%                </p>
%          </td>
%          <td>
%                <p>meanOrientation (single phase only)</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <b>grains.mineral</b>
%                </p>
%          </td>
%          <td>
%                <p>mineral name (single phase only)</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grain2d.neigbours.html">
%                      <b>grains.neighbours</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>number and ids of neighboring grains</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <b>grains.phase</b>
%                </p>
%          </td>
%          <td>
%                <p>phase identifier</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grain2d.perimeter.html">
%                      <b>grains.perimeter</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>perimeter in <a href="grain2d.index.html">grains.scanUnit</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grain2d.principalComponents.html">
%                      <b>grains.principalComponents</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>length and width of the fitted ellipse</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="grain2d.shapeFactor.html">
%                      <b>grains.shapeFactor</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>quotient perimeter / perimeter of the fitted ellipse</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <a href="triplePoints.html">
%                      <b>grains.triplePoints</b>
%                   </a>
%                </p>
%          </td>
%          <td>
%                <p>list of  triple points</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <b>grains.x</b>
%                </p>
%          </td>
%          <td>
%                <p>x coordinates of the vertices</p>
%          </td>
%       </tr>
%       <tr>
%          <td>
%                <p>
%                   <b>grains.y</b>
%                </p>
%          </td>
%          <td>
%                <p>y coordinates of the vertices</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 

%%
% Those grain properties can be used for colorization. E.g. we may colorize
% grains according to their area.

plot(grains,grains.area)

%%
% or a little bit more advanced according to the log quotient between
% grain size and boundary size.

plot(grains,log(grains.grainSize ./ grains.boundarySize))
mtexColorbar

%%
% Note that some properties are available for single phase lists of grains,
% e.g.

% colorize the Forsterite Phase according to its mean orientation
plot(grains('Fo'),grains('Fo').meanOrientation)


%% Changing lists of grains
%
% As with any list in MTEX, one can single out specific grains by conditions
% using the syntax

% this gives all grains with more the 1000 pixels
largeGrains = grains(grains.grainSize > 1000)

hold on
% mark only large Forsterite grains
plot(largeGrains('Fo').boundary,'linewidth',2,'linecolor','k')
hold off

