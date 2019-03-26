%% subsref
% (method of <grain2d_index.html grain2d>)
%% 
% implements grains(1:3)
% 
%
%% View Code
% 
%% Syntax
%   grains(1:10)            % the 10 first grains
%   grains('Fe')            % only Fe grains
%   grains( ~grains('fe') ) % all grains but Fe
%   grains(cond)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>grains</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="grain2d_index.html&#34;">grain2d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>cond</tt>
%          </td>
%          <td>
%                <p>logical array with same size as grains</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 