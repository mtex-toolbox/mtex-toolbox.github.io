%% unimodalODF
% define a unimodal ODF
% 
%
%% View Code
% 
%% Description
% *unimodalODF* defines a radially symmetric, unimodal ODF
% with respect to a crystal orientation |mod|. The
% shape of the ODF is defined by a <kernel_index.html" kernel> function.
% 
%
%% Syntax
%   mod = orientation.byEuler(phi1,Phi,phi2,CS,SS)
%   odf = unimodalODF(mod) % default halfwidth 10 degree
%   odf = unimodalODF(mod,'halfwidth',15*degree) % specify halfwidth
%   odf = unimodalODF(mod,CS,SS)  % specify crystal and specimen symmetry
%   odf = unimodalODF(mod,kernel) % specify <kernel_index.html" kernel> shape
%   odf = unimodalODF(mod,'weights',weights) % specify weights for each component
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>mod</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="quaternion_index.html&#34;">quaternion</a> modal orientation</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS, SS</tt>
%          </td>
%          <td>
%                <p>crystal, specimen <a href="symmetry_index.html&#34;">symmetry</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>hw</tt>
%          </td>
%          <td>
%                <p>halfwidth of the kernel (default - 10ÿ)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>kernel</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="kernel_index.html&#34;">kernel</a> function (default - de la Vallee Poussin)</p>
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
% ODF/ODF uniformODF fibreODF
%