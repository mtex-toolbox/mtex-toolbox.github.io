%% discreteSample
% take a diskrete sample from a list of vectors, orientations, grains, EBSD
% 
%
%% View Code
% 
%% Syntax
%   [obj,ind] = discreteSample(obj,points)
%   discreteSample(v,points,'withReplacement')
%   discreteSample(ori,points,'withReplacement')
%   discreteSample(ebsd,points,'withoutReplacement')
%   discreteSample(gB,points,'withoutReplacement')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>gB</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="grainBoundary_index.html&#34;">grainBoundary</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ebsd</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="EBSD_index.html&#34;">EBSD</a>
%                </p>
%          </td>
%       </tr>
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
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>points</tt>
%          </td>
%          <td>
%                <p>number of random samples</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control discreteSample<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'withReplacement'</tt>
%                   </td>
%                   <td>
%                         <p>take the random sample with replacement (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'withoutReplacement'</tt>
%                   </td>
%                   <td>
%                         <p>take the random sample without replacement</p>
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
%             <tt>obj</tt>
%          </td>
%          <td>
%                <p>same as first input</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ind</tt>
%          </td>
%          <td>
%                <p>indeces of the selected subsamples</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 