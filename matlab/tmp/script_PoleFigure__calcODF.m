%% calcODF
% (method of [[PoleFigure_index.html,PoleFigure]])
%% 
% PDF to ODF inversion
% 
% *calcODF* is one of the main function of the MTEX toolbox. It estimates
% an ODF from given Polefigure intensities by <PoleFigure2odf.html fitting
% an ODF that consists of a large number of unimodal ODFs to the data>. It
% does so by minimizing a least squares functional. The command *calcODF*
% supports <ghost_demo.html automatic ghost correction> and
% <dubna_demo.html the zero range method>. The function *calcODF* has
% several options to control convergence, resolution, smoothing, etc. See
% below for a complete description.
% 
%
%% View Code
% 
%% Syntax
% 
%   odf = calcODF(pf)
%   odf = calcODF(pf,'halfwidth',5*degree)
%   odf = calcODF(pf,'zeroRange')
%   odf = calcODF(pf,'resolution',2.5*degree)
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
%          <td>Parameters and values that control calcODF<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'kernel'</tt>
%                   </td>
%                   <td>
%                         <p>the ansatz functions (default = de la Vallee Poussin)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'halfwidth'</tt>
%                   </td>
%                   <td>
%                         <p>halfwidth of the ansatz functions (default = 2/3 * resolution)</p>
%                   </td>
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
%                      <tt>'iter_max'</tt>
%                   </td>
%                   <td>
%                         <p>maximum number of iterations (default = 11)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'iter_min'</tt>
%                   </td>
%                   <td>
%                         <p>minimum number of iterations (default = 5)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'c0'</tt>
%                   </td>
%                   <td>
%                         <p>initial guess (default = [1 1 1 1 ... 1])</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the calcODF behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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
%                <tr>
%                   <td width="150px">
%                      <tt>'ensure_descent'</tt>
%                   </td>
%                   <td>
%                         <p>stop iteration whenever no procress if observed</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'force_iter_max'</tt>
%                   </td>
%                   <td>
%                         <p>allway go until ITER_MAX</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'silent'</tt>
%                   </td>
%                   <td>
%                         <p>no output</p>
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
%                <p>reconstructed [[ODF_index.html,ODF]]</p>
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
% PoleFigure/load ImportPoleFigureData examples_index
%