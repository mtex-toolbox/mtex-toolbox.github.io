%% calcError
% (method of [[PoleFigure_index.html,PoleFigure]])
%% 
% RP and mean square error
% 
% *calcError(pf,rec)* calculates reconstruction error between meassured
% intensities and the recalcuated ODF or between two meassured pole
% figures. It can be specified whether the RP
% error or the mean square error is calculated. The scaling coefficients
% are calculated by the function PoleFigure/calcNormalization
% 
%
%% View Code
% 
%% Syntax
%   e = calcError(pf,pf2) % compares two different [[PoleFigure_index.html,PoleFigure]] with same [[S2Grid_index.html,S2Grid]]
%   e = calcError(pf,rec) % compares [[PoleFigure_index.html,PoleFigure]] with the Recalculated [[ODF_index.html,ODF]]
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>pf,pf2</tt>
%          </td>
%          <td>
%                <p>[[PoleFigure_index.html,PoleFigure]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>rec</tt>
%          </td>
%          <td>
%                <p>[[ODF_index.html,ODF]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the calcError behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'RP'</tt>
%                   </td>
%                   <td>
%                         <p>(default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'l1'</tt>
%                   </td>
%                   <td>
%                         <p>L1 error</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'l2'</tt>
%                   </td>
%                   <td>
%                         <p>L2 error</p>
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
%             <tt>e</tt>
%          </td>
%          <td>
%                <p>error</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ODF/calcError PoleFigure/calcNormalization PoleFigure/scale
%