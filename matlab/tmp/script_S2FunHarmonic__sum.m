%% sum
% (method of <S2FunHarmonic_index.html S2FunHarmonic>)
%% 
% calculates the integral for an univariate S2Fun or sums up along a specified dimension fo a multimodal S2Fun
% 
%
%% View Code
% 
%% Description
% 
% sF is a 3x3 S2Fun
% sum(sF) returns a 3x3 matrix with the integrals of each function
% sum(sF, 1) returns a 1x3 S2Fun wich contains the pointwise sums along the first dimension
% 
%
%% Syntax
%   value = sum(sF)
%   sF = sum(sF, d)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>sF</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="S2FunHarmonic_index.html&#34;">S2FunHarmonic</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>d</tt>
%          </td>
%          <td>
%                <p>dimension to take the sum value over</p>
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
%             <tt>sF</tt>
%          </td>
%          <td>
%                <p>S2FunHarmonic</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>value</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 