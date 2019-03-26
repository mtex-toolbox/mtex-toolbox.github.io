%% fibreODF
% defines an fibre symmetric ODF
% 
%
%% View Code
% 
%% Description
% *fibreODF* defines a fibre symmetric ODF with respect to
% a crystal direction |h| and a specimen directions |r|. The
% shape of the ODF is defined by a <kernel_index.html" kernel> function.
% 
%
%% Syntax
%   h = Miller(h,k,l,CS)
%   r = vector3d(x,y,z);
%   odf = fibreODF(h,r) % default halfwith 10*degree
%   odf = fibreODF(h,r,'halfwidth',15*degree) % specify halfwidth
%   odf = fibreODF(h,r,kernel) % specify <kernel_index.html" kernel> shape
%   odf = fibreODF(h,r,SS)  % specify crystal and specimen symmetry
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>h</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="Miller_index.html&#34;">Miller</a> / <a href="vector3d_index.html&#34;">vector3d</a> crystal direction</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>r</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a> specimen direction</p>
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
% ODF/ODF uniformODF unimodalODF
%