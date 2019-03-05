%% eig2
% eigenvalue and vectors of a symmetric 2x2 matrix
% 
%
%% View Code
% 
%% Syntax
% 
%   lambda = eig2(M)
% 
%   lambda = eig2(a11,a12,a22)
% 
%   [lambda,v1,v2] = eig2(a11,a12,a22)
% 
%   [lambda,omega] = eig2(a11,a12,a22)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>M</tt>
%          </td>
%          <td>
%                <p>array of symmetric 2x2 matrix</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>a11, a12, a22</tt>
%          </td>
%          <td>
%                <p>vectors of matrix elements</p>
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
%             <tt>lambda</tt>
%          </td>
%          <td>
%                <p>eigen values (first column small one, second column large one)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v1</tt>
%          </td>
%          <td>
%                <p>list of eigen vectors to the smallest eigen value</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v2</tt>
%          </td>
%          <td>
%                <p>list of eigen vectors to the largest eigen value</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>omega</tt>
%          </td>
%          <td>
%                <p>angle of the largest eigen vector in [0,pi]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 