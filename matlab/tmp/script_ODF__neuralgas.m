%% neuralgas
% (method of <ODF_index.html ODF>)
%% 
% attempt to distribute measure-sites equally according to invers polefigure density (experimental)
% 
%
%% View Code
% 
%% Syntax
%   S2G = neuralgas(odf,Miller(1,0,0,cs),'points',500,'epoches',25)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>odf</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="ODF_index.html&#34;">ODF</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>h</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="Miller_index.html&#34;">Miller</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control neuralgas<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Grid'</tt>
%                   </td>
%                   <td>
%                         <p>
%                            <a href="S2Grid_index.html&#34;">S2Grid</a>, reference Grid to evaluate PDF</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'resolution'</tt>
%                   </td>
%                   <td>
%                         <p>Grid Resolution</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'maxtheta'</tt>
%                   </td>
%                   <td>
%                         <p>max Theta of Grid</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Points'</tt>
%                   </td>
%                   <td>
%                         <p>number of Points</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'epoches'</tt>
%                   </td>
%                   <td>
%                         <p>number of Iterations</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'eta'</tt>
%                   </td>
%                   <td>
%                         <p>'learing-rate' as vector: [eta_start eta_stop], default [0.1 0.02]</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'lambda'</tt>
%                   </td>
%                   <td>
%                         <p>stimuli of</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'verbose'</tt>
%                   </td>
%                   <td>
%                         <p>display points during optimisation</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% S2Grid/refine
%