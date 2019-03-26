%% calcKernel
% (method of <orientation_index.html orientation>)
%% 
% compute an optimal kernel function for ODF estimation
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>psi = calcKernel(ori,'param1',val1,'param2',val2)</tt>
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
%          <td>Parameters and values that control calcKernel<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'method'</tt>
%                   </td>
%                   <td>
%                         <p>select a halfwidth by</p>
%                         <ul>
%                            <li>
%                               <tt>'RuleOfThumb'</tt>
%                            </li>
%                         </ul>
%                         <p>or via cross valiadation method:</p>
%                         <ul>
%                            <li>
%                               <tt>'LSCV'</tt> - least squares cross valiadation</li>
%                            <li>
%                               <tt>'KLCV'</tt> - Kullback Leibler cross validation</li>
%                            <li>
%                               <tt>'BCV'</tt> - biased cross validation</li>
%                         </ul>
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
%             <tt>psi</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="kernel_index.html&#34;">kernel</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% EBSD/calcODF orientation/BCV orientation/KLCV orientation/LSCV
%