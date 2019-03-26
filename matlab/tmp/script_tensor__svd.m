%% svd
% (method of <tensor_index.html tensor>)
%% 
% singular value decomposition of a rank two tensor
% 
%
%% View Code
% 
%% Syntax
%   S = svd(T)
%   [U,S,V] = svd(T)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>T</tt>
%          </td>
%          <td>
%                <p>list of M rank 2 <a href="tensor_index.html&#34;">tensor</a>
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
%             <tt>S</tt>
%          </td>
%          <td>
%                <p>3xM sorted singular values, starting with the largest</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>U</tt>
%          </td>
%          <td>
%                <p>3xM left singular <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>V</tt>
%          </td>
%          <td>
%                <p>3xM right singular <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 