%% sum
% (method of <S2Fun_index.html S2Fun>)
%% 
% calculates the mean value for an univariate S2Fun or calculates the mean along a specified dimension fo a multimodal S2Fun
% 
%
%% View Code
% 
%% Description
% 
% If sF is a 3x3 S2Fun then
% mean(sF) returns a 3x3 matrix with the mean values of each function
% mean(sF, 1) returns a 1x3 S2Fun wich contains the pointwise means values along the first dimension
% 
%
%% Syntax
%   value = mean(sF)
%   sF = mean(sF, d)
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
%                <p>dimension to take the mean value over</p>
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