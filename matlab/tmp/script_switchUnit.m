%% switchUnit
% returns the closest length to a known unit.
% For example, 10e3m will give 10km.
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[fval funit] = closest_value(val, unit)</tt>
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
%             <tt>val</tt>
%          </td>
%          <td>
%                <p>a value</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>unit</tt>
%          </td>
%          <td>
%                <p>unit of the value (e.g. nm, m, ...)</p>
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
%             <tt>oval</tt>
%          </td>
%          <td>
%                <p>output value</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ounit</tt>
%          </td>
%          <td>
%                <p>output unit</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 