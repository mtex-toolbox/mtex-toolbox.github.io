%% halfQuadraticFilter
% haldQuadraticFilter uses the techniques elaborated half-quadratic
% minmization on manifolds
% to smooth EBSD data.
% Properties:   alpha:  regularisation parameter in [x,y] direction
%               weight: function handle specified by the regularising
%                       function \varphi, @(t,eps), where eps is its
%                       parameter
%               eps:    Parameter for the weight
%               tol:    Tolerance for the gradient descent
%               threshold: threshold for subgrain boundaries
% Methods:      smooth: Applies the HQ minimization on the quaternions
%                       of the given orientations
% 
% For further details of the algorithm see:
% R. Bergmann, R. H. Chan, R. Hielscher, J. Persch, G. Steidl
% Restoration of Manifold-Valued Images by Half-Quadratic Minimization.
% Preprint, ArXiv #1505.07029. (2015)
% 
% 
% Written by Johannes Persch, Ronny Bergmann, 09.06.2015
%        <persch@mathematik.uni-kl.de>, <bergmann@mathematik.uni-kl.de>
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>handle specified by the regularising</tt>
%       </div>
%    </div>
% </html>
% 