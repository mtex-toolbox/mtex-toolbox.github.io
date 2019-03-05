%% infimalConvolutionFilter
% matrix-valued image with the TV-norm.
% \argmin_u{\|u-u_0\|_2^2 + \lambda \|\nabla u\|_{2,1} + \mu \|H u\|_{2,1}},
% \lambda,\mu > 0
% Written by Johannes Persch, Ronny Bergmann, 09.06.2015
% function ma_val_im_reg_2nd_ord minimzes the second order model of a
% OUTPUT:
%  u_hat:       computed minimizer
%  diff:        differences of u and v between two successive iterations
% 
% 12.05.15 by Markus Loeckel
% 25.05.15 substituted gauss seidel by mldivide
% 26.05.15 modified SPD by not deleting half of the entries
% 30.06.15 projection onto sphere added
% 01.07.15 mask added
% 14.07.15 alternative minimzation w.r.t. u via preconditioned cg added
% 16.07.15 first-and second-order combined
% 16.07.15 stopping criterion added
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>ma_val_im_reg_2nd_ord minimzes the second order model of a</tt>
%       </div>
%    </div>
% </html>
% 