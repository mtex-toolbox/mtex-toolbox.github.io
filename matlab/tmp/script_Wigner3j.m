%% Wigner3j
% Compute the Wigner 3j symbol using the Racah formula.
% 
% W = Wigner3j( J123, M123 )
% 
% J123 = [J1, J2, J3], with the condition:
%        |Ji - Jj| <= Jk <= (Ji + Jj)    (i,j,k are permutations of 1,2,3)
% M123 = [M1, M2, M3], with the conditions:
%        |Mi| <= Ji    (i = 1,2,3)
%        M1 + M2 + M3 = 0
% All Ji and Mi have to be half integers (correspondingly).
% 
% Reference:
% Wigner 3j-Symbol entry of Eric Weinstein's Mathworld:
% http://mathworld.wolfram.com/Wigner3j-Symbol.html
% 
% Inspired by Wigner3j.m by David Terr, Raytheon, 6-17-04
%  (available at www.mathworks.com/matlabcentral/fileexchange).
% 
% By Kobi Kraus, Technion, 25-6-08.
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>wigner = Wigner3j( j123, m123 )</tt>
%       </div>
%    </div>
% </html>
% 