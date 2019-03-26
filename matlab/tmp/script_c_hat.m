%% c_hat
% return the second moments for bingham test
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[chat, T, Tv, n] = c_hat('param1',val1,'param2',val2)</tt>
%       </div>
%    </div>
% </html>
% 
%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>o</tt>
%          </td>
%          <td>
%                <pre>&lt;EBSD_index.html" EBSD&gt; / &lt;orientation_index.html" orientation&gt; / @grain</pre>
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
%             <tt>chat</tt>
%          </td>
%          <td>
%                <p>4x4 tensor</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>T</tt>
%          </td>
%          <td>
%                <p>eigenvalues</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>Tv</tt>
%          </td>
%          <td>
%                <p>eigenvectors</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>n</tt>
%          </td>
%          <td>
%                <p>number of points</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% bingham_test
%