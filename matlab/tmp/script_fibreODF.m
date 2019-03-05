%% fibreODF
% defines an fibre symmetric ODF
% 
%
%% View Code
% 
%% Description
% *fibreODF* defines a fibre symmetric ODF with respect to
% a crystal direction |h| and a specimen directions |r|. The
% shape of the ODF is defined by a [[kernel_index.html,kernel]] function.
% 
%
%% Syntax
%   h = Miller(h,k,l,CS)
%   r = vector3d(x,y,z);
%   odf = fibreODF(h,r) % default halfwith 10*degree
%   odf = fibreODF(h,r,'halfwidth',15*degree) % specify halfwidth
%   odf = fibreODF(h,r,kernel) % specify [[kernel_index.html,kernel]] shape
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
%                <p>[[Miller_index.html,Miller]] / [[vector3d_index.html,vector3d]] crystal direction</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>r</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]] specimen direction</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS, SS</tt>
%          </td>
%          <td>
%                <p>crystal, specimen [[symmetry_index.html,symmetry]]</p>
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
%                <p>[[kernel_index.html,kernel]] function (default - de la Vallee Poussin)</p>
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
% ODF/ODF uniformODF unimodalODF
%