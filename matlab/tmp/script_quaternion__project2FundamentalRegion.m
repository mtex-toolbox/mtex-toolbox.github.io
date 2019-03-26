%% project2FundamentalRegion
% (method of <quaternion_index.html quaternion>)
%% 
% projects quaternions to a fundamental region
% 
%
%% View Code
% 
%% Syntax
%   project2FundamentalRegion(q,CS)       % to FR
%   project2FundamentalRegion(q,CS,q_ref) % to FR around reference rotation
%   project2FundamentalRegion(q,CS1,CS2,q_ref)  % misorientation to FR around id
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>q</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="quaternion_index.html&#34;">quaternion</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS1, CS2</tt>
%          </td>
%          <td>
%                <p>crystal <a href="symmetry_index.html&#34;">symmetry</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>q_ref</tt>
%          </td>
%          <td>
%                <p>reference <a href="quaternion_index.html&#34;">quaternion</a> single or size(q) == size(q_ref)</p>
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
%             <tt>q</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="quaternion_index.html&#34;">quaternion</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>omega</tt>
%          </td>
%          <td>
%                <p>rotational angle to reference quaternion</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 