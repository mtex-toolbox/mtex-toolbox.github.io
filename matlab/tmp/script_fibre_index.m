%% Fibres
% This sections describes the class <fibre_index.html fibre> and gives an
% overview how to work with fibres in MTEX.
%
%% Open in Editor
%
%% Defining a Fibre
%
% A fibre in orientation space can be seen as a line connecting two
% orientations.

% define a crystal symmetry
cs = crystalSymmetry('432')
ss = specimenSymmetry('222')

% and two orientations
ori1 = orientation.cube(cs,ss);
ori2 = orientation.goss(cs,ss);

% the connecting fibre
f = fibre(ori1,ori2)

% lets plot the two orientations together with the fibre
plot(ori1,'MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor','k')
hold on
plot(ori2,'MarkerSize',10,'MarkerFaceColor','b','MarkerEdgeColor','k')
plot(f,'linewidth',3,'linecolor','g')
hold off



%%
%Since, the orientation space has no boundary a full fibre
% is best thought of as a circle that passes trough two fixed orientations.

%% SUB: by two orientations
%

% define a crystal symmetry
cs = crystalSymmetry('432')

% the corresponding fundamental region
oR = fundamentalRegion(cs)

% two orientations
ori1 = orientation.cube(cs);
ori2 = orientation.goss(cs);

% visualize the orientation region as well as the two orientations
plot(oR)
hold on
plot(ori1,'MarkerFaceColor','r','MarkerSize',10)
plot(ori2,'MarkerFaceColor','g','MarkerSize',10)
hold off

%%
% Now we can define the partial fibre connecting the cube orientation with
% the goss orientation by

f = fibre(ori1,ori2)

hold on
plot(f,'linecolor','b','linewidth',2)
hold off

%%
% In order to define the full fibre us the option |full|
%

f = fibre(ori1,ori2,'full')

hold on
plot(f,'linecolor','b','linewidth',2,'project2FundamentalRegion')
hold off

%% 


%% SUB: by two directions
%
% Alternatively, a fibre can also be defined by a crystal direction and a
% specimen direction. In this case it consists of all orientations that
% alignes the crystal direction parallel to the specimen direction. As an
% example we can define the fibre of all orientations such that the c-axis
% (001) is parallel to the z-axis by 

f = fibre(Miller(0,0,1,cs),vector3d.Z)

plot(oR)
hold on
plot(f,'linecolor','b','linewidth',2,'project2FundamentalRegion')
hold off

%%
% If the second argument is a of type Miller as well the fibre defines a
% set of misorientations which have one direcetion aligned.

%% SUB: by one orientation and an orientation gradient
% Finally, a fibre can be defined by an initial orientation |ori1| and a
% direction |h|, i.e., all orientations of this fibre satisfy
%
% ori = ori1 * rot(h,omega)
%
% ori * h = ori1 * h
%
% The following code defines a fibre that passes through the cube
% orientation and rotates about the 111 axis.

f = fibre(ori1,Miller(1,1,1,cs))

plot(oR)
hold on
plot(f,'linecolor','r','linewidth',2,'project2FundamentalRegion')
hold off


%% SUB: predefined fibres
% There exist a list of predefined fibres in MTEX which include
% alpha-, beta-, gamma-, epsilon-, eta- and tau fibre. Those can be defined
% by

beta = fibre.beta(cs,'full');

%%
% Note, that it is now straight forward to define a corresponding fibre ODF by

odf = fibreODF(beta,'halfwidth',10*degree)

% and plot it in 3d
plot3d(odf)

% this adds the fibre to the plots
hold on
plot(beta.symmetrise,'lineColor','b','linewidth',2)
hold off

%% Visualize an ODF along a fibre
%

plot(odf,fibre.gamma(cs))


%% Compute volume of fibre portions

100 * volume(odf,beta,10*degree)

%%


%% Complete Function list
% 
% <html><table width="90%"><tr><td width="200px"><a href="fibre.angle.html"><tt>angle</tt></a></td><td>fibre to orientation or fibre to fibre</td></tr><tr><td width="200px"><a href="fibre.display.html"><tt>display</tt></a></td><td>standard output</td></tr><tr><td width="200px"><a href="fibre.end.html"><tt>end</tt></a></td><td>overloaded end function</td></tr><tr><td width="200px"><a href="fibre.eq.html"><tt>eq</tt></a></td><td>? sS1 == sS2</td></tr><tr><td width="200px"><a href="fibre.fibre.html"><tt>fibre</tt></a></td><td>is a class representing a fibre in orientation space. Examples</td></tr><tr><td width="200px"><a href="fibre.horzcat.html"><tt>horzcat</tt></a></td><td>overloads [v1,v2,v3..]</td></tr><tr><td width="200px"><a href="fibre.isempty.html"><tt>isempty</tt></a></td><td>overloads isempty</td></tr><tr><td width="200px"><a href="fibre.length.html"><tt>length</tt></a></td><td>overloads length</td></tr><tr><td width="200px"><a href="fibre.ne.html"><tt>ne</tt></a></td><td>? sS1 ~= sS2</td></tr><tr><td width="200px"><a href="fibre.orientation.html"><tt>orientation</tt></a></td><td>generate a list of orientation out of a fibre</td></tr><tr><td width="200px"><a href="fibre.plot.html"><tt>plot</tt></a></td><td>a fibre</td></tr><tr><td width="200px"><a href="fibre.plotIPDF.html"><tt>plotIPDF</tt></a></td><td>plot orientations into inverse pole figures</td></tr><tr><td width="200px"><a href="fibre.plotPDF.html"><tt>plotPDF</tt></a></td><td>plot a fibre into pole figures</td></tr><tr><td width="200px"><a href="fibre.rotation.html"><tt>rotation</tt></a></td><td>generate a list of orientation out of a fibre</td></tr><tr><td width="200px"><a href="fibre.size.html"><tt>size</tt></a></td><td>overloads size</td></tr><tr><td width="200px"><a href="fibre.subSet.html"><tt>subSet</tt></a></td><td>subindex vector3d</td></tr><tr><td width="200px"><a href="fibre.subsref.html"><tt>subsref</tt></a></td><td>overloads subsref</td></tr><tr><td width="200px"><a href="fibre.symmetrise.html"><tt>symmetrise</tt></a></td><td>all crystallographically equivalent fibres</td></tr><tr><td width="200px"><a href="fibre.transpose.html"><tt>transpose</tt></a></td><td>list of slipSystem</td></tr><tr><td width="200px"><a href="fibre.vertcat.html"><tt>vertcat</tt></a></td><td>overloads [v1,v2,v3..]</td></tr></table></html>