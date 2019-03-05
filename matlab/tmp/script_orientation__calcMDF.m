%% calcMDF
% (method of [[orientation_index.html,orientation]])
%% 
% computes an MDF from individuel orientations or misorientations
% 
% The function *calcMDF* applies one of the following algorithms to compute
% an MDF from a list of orientations.
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
%   mori = grains.boundary.misorientation
%   mdf = calcMDF(mori,'halfwidth',10*degree)
% 
%   % compute an uncorrelated MDF
%   mdf = calcMDF(grains('phase1').meanorientation)
% 
%   % use grain area as weights for the orientations
%   mdf = calcMDF(grains('phase1').meanOrientation,'weights',grains('phase1').diameter)
% 
%   % use a specific kernel
%   psi = AbelPoissonKernel('halfwidth',10*degree)
%   mdf = calcMDF(mori,'kernel',psi)
% 
%   % compute the MDF as a Fourier series of order 16
%   mdf = calcMDF(mori,'order',16)
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
%             <tt>mori</tt>
%          </td>
%          <td>
%                <p>misorientation</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcMDF<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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
%                         <p>resolution of the grid where the MDF is approximated</p>
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
%          <td>Options that control the calcMDF behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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
%                         <p>model bingham mdf</p>
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
%             <tt>mdf</tt>
%          </td>
%          <td>
%                <p>[[ODF_index.html,ODF]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% orientation/calcFourierMDF orientation/calcKernelMDF orientation/calcBinghamMDF ebsd_demo EBSD2mdf EBSDSimulation_demo
%