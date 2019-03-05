%% bingham_test
% (method of [[orientation_index.html,orientation]])
%% 
% bingham test for spherical/prolat/oblat case
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[T,p,v] = bingham_test(ori,'param1',val1,'param2',val2)</tt>
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
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>[[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control bingham_test<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'spherical'</tt>
%                   </td>
%                   <td>
%                         <p>test case</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'prolate'</tt>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'oblate'</tt>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'c_hat'</tt>
%                   </td>
%                   <td>
%                         <p>test without kappas</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
%  evalkappa c_hat
%