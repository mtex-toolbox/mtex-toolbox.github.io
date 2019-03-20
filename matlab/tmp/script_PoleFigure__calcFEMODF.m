%% calcFEMODF
% (method of [[PoleFigure_index.html,PoleFigure]])
%% 
% PDF to ODF inversion
% 
% *calcFEMODF* is one of the main function of the MTEX toolbox.
% It estimates an ODF from given Polefigure intensities by
% <PoleFigure2odf.html fitting an ODF that consists of a large number of unimodal ODFs to the data>.
% It does so by minimizing a least squares functional. The command
% *calcODF* supports <ghost_demo.html automatic ghost correction> and
% <dubna_demo.html the zero range method>.
% The function *calcFEMODF* has several options to control convergence,
% resolution, smoothing, etc. See below for a complete description.
% 
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[odf,alpha] = calcFEMODF(pf,'param1',val1,'param2',val2)</tt>
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
%             <tt>pf</tt>
%          </td>
%          <td>
%                <p>[[PoleFigure_index.html,PoleFigure]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcFEMODF<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'resolution'</tt>
%                   </td>
%                   <td>
%                         <p>localization grid for the ansatz fucntions (default = 3/2 resolution(pf))</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'iterMax'</tt>
%                   </td>
%                   <td>
%                         <p>maximum number of iterations (default = 11)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'regularisation'</tt>
%                   </td>
%                   <td>
%                         <p>weighting coefficient lambda (default = 0)</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the calcFEMODF behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'zeroRange'</tt>
%                   </td>
%                   <td>
%                         <p>apply zero range method (default = )</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'noGhostCorrection'</tt>
%                   </td>
%                   <td>
%                         <p>omit ghost correction</p>
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
%             <tt>odf</tt>
%          </td>
%          <td>
%                <p>reconstructed @FEMODF</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>alpha</tt>
%          </td>
%          <td>
%                <p>scaling factors, calculated during reconstruction</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% PoleFigure2odf ODF_demo PoleFigureSimulation_demo
% PoleFigure.load ImportPoleFigureData examples_index
%