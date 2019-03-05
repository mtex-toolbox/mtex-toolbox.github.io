%% Discretisation of 2 - Sphere (The Class [[S2Grid_index.html,S2Grid]])
% represents a grid of nodes on the sphere 
%
%% Contents
%
%% Class Description
% The class *S2Grid* is used in MTEX to store the set of specimen
% directions organized in a [[PoleFigure_index.html,pole figure]]. Of 
% central importance is also the plotting method of this class since it is 
% used by almost all other plotting methods in MTEX to perform spherical 
% plots. 
%
%% SUB: Defining a S2Grid
%
% There are various ways to define a S2Grid. Next, you find some examples.
% For a detailed description of possible specifications look for the
% documentation of the constructor [[S2Grid_index.html,S2Grid]]. 

% equidistributions
S2G = equispacedS2Grid('points',100,'antipodal');  % specified by number of points
S2G = equispacedS2Grid('RESOLUTION',5*degree,'antipodal');  % specified by resolution

% regular grids
S2G = regularS2Grid('points',[72,19]); % specified by number of theta and rho steps
S2G = regularS2Grid('theta',linspace(0,2*pi,72),...
             'rho',linspace(0,pi/2,19)); % explicitly determine theta and rho values

% restrictes grids
S2G = equispacedS2Grid('points',100,'MAXTHETA',75*degree);  % specify maximum theta angle

%% SUB: Plots

plot(equispacedS2Grid('points',100,'antipodal'))  % plot the grid of nodes


%% Complete Function list
% 
% <html><table width="90%"><tr><td width="200px"><a href="S2Grid.S2Grid.html"><tt>S2Grid</tt></a></td><td>Syntax</td></tr><tr><td width="200px"><a href="S2Grid.copy.html"><tt>copy</tt></a></td><td>certain condition from grid</td></tr><tr><td width="200px"><a href="S2Grid.delete.html"><tt>delete</tt></a></td><td>elilinates points from grid</td></tr><tr><td width="200px"><a href="S2Grid.display.html"><tt>display</tt></a></td><td>standard output</td></tr><tr><td width="200px"><a href="S2Grid.find.html"><tt>find</tt></a></td><td>return index of all points in a epsilon neighborhood of a vector</td></tr><tr><td width="200px"><a href="S2Grid.getdata.html"><tt>getdata</tt></a></td><td>return index of all points in a epsilon neighborhood of a vector</td></tr><tr><td width="200px"><a href="S2Grid.polar.html"><tt>polar</tt></a></td><td>coordinates of S2Grid</td></tr><tr><td width="200px"><a href="S2Grid.refine.html"><tt>refine</tt></a></td><td>S2Grid</td></tr><tr><td width="200px"><a href="S2Grid.subGrid.html"><tt>subGrid</tt></a></td><td/></tr><tr><td width="200px"><a href="S2Grid.subsasgn.html"><tt>subsasgn</tt></a></td><td>overloads subsasgn</td></tr><tr><td width="200px"><a href="S2Grid.subsref.html"><tt>subsref</tt></a></td><td>overloads subsref</td></tr></table></html>