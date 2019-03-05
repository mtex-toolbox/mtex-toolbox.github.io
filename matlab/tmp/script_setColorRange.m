%% setColorRange
% set color range for figures
% 
%
%% View Code
% 
%% Syntax
%   setColorRange([min max],'all')
%   setColorRange('equal','current')
%   setColorRange('tight','figure',figurelist)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>[min max]</tt>
%          </td>
%          <td>
%                <p>minimum and maximum value</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>figurelist</tt>
%          </td>
%          <td>
%                <p>list of figure where the plots should be scaled</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control setColorRange<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'equal'</tt>
%                   </td>
%                   <td>
%                         <p>scale plots to the same range</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'tight'</tt>
%                   </td>
%                   <td>
%                         <p>scale plots individually</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'all'</tt>
%                   </td>
%                   <td>
%                         <p>scale all plots</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'current'</tt>
%                   </td>
%                   <td>
%                         <p>scale only plots in the current figure</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'figure'</tt>
%                   </td>
%                   <td>
%                         <p>scale only plots in figurelist</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'zero2white'</tt>
%                   </td>
%                   <td>
%                         <p>color zero values white</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% multiplot S2Grid/plot
%