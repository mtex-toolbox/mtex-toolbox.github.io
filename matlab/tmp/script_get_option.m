%% get_option
% extract option from option list
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
%          <tt>value = get_option(option_list,option_name,default_option,option_type)</tt>
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
%             <tt>option_name</tt>
%          </td>
%          <td>
%                <p>String</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>option_default</tt>
%          </td>
%          <td>
%                <p>default value</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>option_type</tt>
%          </td>
%          <td>
%                <p>class name or list of class names</p>
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
%             <tt>value</tt>
%          </td>
%          <td>
%                <p>option value</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% check_option set_option delete_option
%