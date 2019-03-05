%% dot
% (method of [[Miller_index.html,Miller]])
%% 
% inner product between two Miller indece
% 
%
%% View Code
% 
%% Syntax
%   a = dot(m1,m2)
%   a = dot(m1,m2,'antipodal')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>m1,m2</tt>
%          </td>
%          <td>
%                <p>[[Miller_index.html,Miller]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control dot<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'antipodal'</tt>
%                   </td>
%                   <td>
%                         <p>consider m1,m2 with antipodal symmetry</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'all'</tt>
%                   </td>
%                </tr>
%             </table>
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
%             <tt>d</tt>
%          </td>
%          <td>
%                <p>double [length(m1) length(cs)]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 