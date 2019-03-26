%% plot
% (method of <ODF_index.html ODF>)
%% 
% plots odf or append to a previous plot using 'add2all'
% 
%
%% View Code
% 
%% Syntax
% 
%   % plot in phi2 sections
%   plot(odf)
% 
%   % plot in specific phi2 sections
%   plot(odf,'phi2',45*degree)
% 
%   % plot in 3d space
%   plot(odf,'axisAngle')
%   plot(odf,'rodrigues')
% 
%   % plot along a fibre
%   f = fibre.alpha(odf.CS)
%   plot(odf,f)
% 
%   % plot the odf as sigma sections
%   oS = sigmaSections(odf.CS)
%   plot(odf,oS)
% 

%% See also
% ODF/plotSection ODF/plot3d ODF/plotFibre
%