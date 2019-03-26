%% neighbors
% (method of <grain2d_index.html grain2d>)
%% 
% returns the number of neighboring grains
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[counts,pairs] = neighbors(grains)</tt>
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
%             <tt>grains</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="grain2d_index.html&#34;">grain2d</a>
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
%             <tt>counts</tt>
%          </td>
%          <td>
%                <p>number of neighbors per grain</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>pairs</tt>
%          </td>
%          <td>
%                <p>index list of size N x 2, where <equation>
%                      <img alt="$$N = 2 \sum n_i $$" class="equation" height="21px" src="grain2d.neighbors_tmp_eq09370701143650386670.png" width="78px"/>
%                   </equation> is the total number of neighborhood relations (without self-reference).</p>
%                <p>pairs(i,:) give the indexes of two neighbored grains, i.e</p>
%                <pre>neighbor_gr = grains(pairs(1,:))</pre>
%                <p>selects two neighbored grains.</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 