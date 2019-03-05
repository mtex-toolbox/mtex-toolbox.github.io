%% fill
% (method of [[EBSDsquare_index.html,EBSDsquare]])
%% 
% fill spatial EBSD data
% 
% The function |fill| changes the values of phaseId and graindId from NaN
% to a the value of its nearest neighbours. In case an grain object is
% specified as a second argument, only pixels that are entirely inside a
% grains will to associated to this grain.
% 
%
%% View Code
% 
%% Syntax
% 
%   ebsd = fill(ebsd)
%   ebsd = fill(ebsd,grains)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>ebsd</tt>
%          </td>
%          <td>
%                <p>[[EBSD_index.html,EBSD]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
