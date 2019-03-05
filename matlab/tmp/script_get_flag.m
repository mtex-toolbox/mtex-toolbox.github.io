%% get_flag
% extract flag from option list
% 
% In case the option occurs more than one time in the option list the first
% value that meets the type condition is returned.
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>flag = get_flag(option_list,flag_list,default_flag)</tt>
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
%             <tt>option_list</tt>
%          </td>
%          <td>
%                <p>Cell Array</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>flag_list</tt>
%          </td>
%          <td>
%                <p>Cell Array</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>default_flag</tt>
%          </td>
%          <td>
%                <p>default value</p>
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
%             <tt>flag</tt>
%          </td>
%          <td>
%                <p>string</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% check_option set_option delete_option
%