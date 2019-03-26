%% calcODF
% (method of <orientation_index.html orientation>)
%% 
% computes an ODF from individuel orientations
% 
% The function *calcODF* applies one of the following algorithms to compute
% an ODF from a list of orientations.
% 
% # direct kernel density estimation
% # kernel density estimation via Fourier series
% # Bingham estimation
% 
%
%% View Code
% 
%% Syntax
% 
%   % use kernel density estimation with a 10 degree kernel
%   odf = calcODF(ori,'halfwidth',10*degree)
% 
%   % use grain area as weights for the orientations
%   odf = calcODF(grains.meanOrientation,'weights',grains.area)
% 
%   % use a specific kernel
%   psi = AbelPoissonKernel('halfwidth',10*degree)
%   odf = calcODF(ori,'kernel',psi)
% 
%   % compute the ODF as a Fourier series of order 16
%   odf = calcODF(ori,'order',16)
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
%                <p>
%                   <a href="orientation_index.html&#34;">orientation</a>
%                </p>
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
%                      <tt>'weights'</tt>
%                   </td>
%                   <td>
%                         <p>list of weights for the orientations</p>
%                   </td>
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
%                      <tt>'order'</tt>
%                   </td>
%                   <td>
%                         <p>order up to which Fourier coefficients are calculated</p>
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
%                      <tt>'silent'</tt>
%                   </td>
%                   <td>
%                         <p>no output</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'exact'</tt>
%                   </td>
%                   <td>
%                         <p>no approximation to a corser grid</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Fourier'</tt>
%                   </td>
%                   <td>
%                         <p>force Fourier method</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Bingham'</tt>
%                   </td>
%                   <td>
%                         <p>model bingham odf</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'noFourier'</tt>
%                   </td>
%                   <td>
%                         <p>no Fourier method</p>
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
%                <p>
%                   <a href="ODF_index.html&#34;">ODF</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% orientation/calcFourierODF orientation/calcKernelODF orientation/calcBinghamODF ebsd_demo EBSD2odf EBSDSimulation_demo
%