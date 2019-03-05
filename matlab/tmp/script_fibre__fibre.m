%% fibre
% (method of [[fibre_index.html,fibre]])
%% 
% fibre is a class representing a fibre in orientation space. Examples
% are alpha, beta or gamma fibres. In general a fibre is defined by a
% crystal direction h of type <Miller_index.html Miller> and a specimen
% direction of type <vector3d_index.html vector3d>.
% 
%
%% View Code
% 
%% Syntax
%   cs = crystalSymmetry('432')
%   f = fibre.alpha(cs,'full') % the alpha fibre
% 
%   plotPDF(f,Miller(1,0,0,cs))
% 
%   f = fibre(o1,o2) % the fibre from o1 to o2
% 
% 
%                                                              <html>
%                                                                 <table class="usertable"/>
%                                                              </html>
% 
%   f = fibre(h,r)   % the fibre with h parallel to r
% 
% *Predefined fibres*
% 
%  * fibre.alpha
%  * fibre.beta
%  * fibre.gamma
%  * fibre.tau
%  * fibre.eta
%  * fibre.epsion
% 
