%% checkZeroRange
% (method of <zeroRangeMethod_index.html zeroRangeMethod>)
%% 
% check for zero regions in experiementl pole figures
% 
%
%% View Code
% 
%% Syntax
% 
%   isZero = checkZeroRange(zrm,ori) % check at orientation in all pole figures
%   isZero = checkZeroRange(zrm,v,i) % check at position in the i-th pole figure
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>zrm</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="zeroRangeMethod_index.html&#34;">zeroRangeMethod</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="orientation_index.html&#34;">orientation</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>i</tt>
%          </td>
%          <td>
%                <p>check in the i~th pole figure</p>
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
%             <tt>isZero</tt>
%          </td>
%          <td>
%                <p>boolean vector of length(ori)</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 