%% calcErrorPF
% (method of [[PoleFigure_index.html,PoleFigure]])
%% 
% error polefigure between meassured and recalculated pole figures
% 
% returns a [[PoleFigure_index.html,PoleFigure]] with valuess given as the difference between the
% meassured intensities and the recalculated [[ODF_index.html,ODF]] or between two meassured
% [[PoleFigure_index.html,PoleFigure]].
% 
%
%% View Code
% 
%% Syntax
%   pf = calcErrorPF(pfmeas,pfcalc) %
%   pf = calcErrorPF(pfmeas,odf)    %
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>pfmeas</tt>
%          </td>
%          <td>
%                <p>meassured [[PoleFigure_index.html,PoleFigure]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>pfcalc</tt>
%          </td>
%          <td>
%                <p>recalculated [[PoleFigure_index.html,PoleFigure]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>odf</tt>
%          </td>
%          <td>
%                <p>recalculated [[ODF_index.html,ODF]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcErrorPF<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'RP'</tt>
%                   </td>
%                   <td>
%                         <p>RP value (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'l1'</tt>
%                   </td>
%                   <td>
%                         <p>l1 error</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'l2'</tt>
%                   </td>
%                   <td>
%                         <p>l2 error</p>
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
%             <tt>pf</tt>
%          </td>
%          <td>
%                <p>[[PoleFigure_index.html,PoleFigure]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
%  PoleFigure/calcError ODF/calcPoleFigure
%