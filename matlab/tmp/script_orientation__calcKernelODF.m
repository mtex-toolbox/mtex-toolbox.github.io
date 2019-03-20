%% calcKernelODF
% (method of [[orientation_index.html,orientation]])
%% 
% calculate ODF from individuel orientations via kernel density estimation
% 
% *calcKernelODF* is one of the core function of the MTEX toolbox.
% It estimates an ODF from a set of individual crystal orientations by
% <EBSD2odf.html kernel density estimation>.
% 
% The function *calcKernelODF* has several options to control the halfwidth
% of the kernel functions, the resolution, etc. Most important the
% estimated ODF is affected by the *halfwidth* of the kernel function.
% 
% If the halfwidth is large the estimated ODF is smooth whereas a small
% halfwidth results in a sharp ODF. It depends on your prior information
% about the ODF to choose this parameter right. Look at this
% <EBSDSimulation_demo.html description> for an exhausive discussion.
% 
%
%% View Code
% 
%% Syntax
%   odf = calcKernelODF(ori)
%   odf = calcKernelODF(grains.meanOrientation,'weigths',grains.area)
%   odf = calcKernelODF(ebsd.orientations,'halfwidth',5*degree)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>[[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcKernelODF<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'halfwidth'</tt>
%                   </td>
%                   <td>
%                         <p>halfwidth of the kernel function</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'resolution'</tt>
%                   </td>
%                   <td>
%                         <p>resolution of the grid where the ODF is approximated</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'kernel'</tt>
%                   </td>
%                   <td>
%                         <p>kernel function (default - de la Valee Poussin kernel)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'weights'</tt>
%                   </td>
%                   <td>
%                         <p>list of weights for the orientations</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the calcKernelODF behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'exact'</tt>
%                   </td>
%                   <td>
%                         <p>no approximation to a corser grid</p>
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
%                <p>[[ODF_index.html,ODF]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ebsd_demo EBSD2odf EBSDSimulation_demo EBSD/load ODF/calcEBSD EBSD/calcKernel kernel/kernel
%