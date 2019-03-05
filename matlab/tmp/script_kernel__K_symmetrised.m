%% K_symmetrised
% (method of [[kernel_index.html,kernel]])
%% 
% evaluate kernel modulo symmetries
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>w = K_symmetrised(psi,q1,q2,CS,SS,'param1',val1,'param2',val2)</tt>
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
%             <tt>psi</tt>
%          </td>
%          <td>
%                <p>[[kernel_index.html,kernel]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>q1, q2</tt>
%          </td>
%          <td>
%                <p>[[quaternion_index.html,quaternion]](s)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS, SS</tt>
%          </td>
%          <td>
%                <p>crystal , specimen [[symmetry_index.html,symmetry]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control K_symmetrised<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'exact'</tt>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'epsilon'</tt>
%                   </td>
%                   <td>
%                         <pre>general formula:</pre>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'K(q1,q2) = Sum(S) Sum(l) A_l Tr T_l(s1^'</tt>
%                   </td>
%                   <td>
%                         <pre>q1 s2)</pre>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 