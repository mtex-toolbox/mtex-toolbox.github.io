%% loadPoleFigure
% import pole figure data
% 
%
%% View Code
% 
%% Description
% *loadPoleFigure* is a high level method for importing pole figure data
% from external files. It autodetects the format of the file. As parameters
% the method requires the crystal and specimen [[symmetry_index.html,symmetry]]. Additionally it is
% sometimes required to pass a list of crystal directions and a list of
% structure coefficients. See [[ImportPoleFigureData.html,interfaces]] for an
% example how to import superposed pole figures. In the case of generic
% ascii files each of which consist of a table containing in each row a
% specimen direction and a diffraction intensity see
% <loadPoleFigure_generic.html loadPoleFigure_generic> for additional options.
% Furthermore, you can specify a comment to be associated with the data.
% 
% 
%
%% Syntax
%   pf = loadPoleFigure(fname)
% 
%   fnames = {fname1,...,fnameN}  % define filename(s)
%   h = {h1,..,hN}                % define crystal directions
%   c = {c1,..,cN}                % define structure coefficients
%   pf = loadPoleFigure(fnames,h,cs,ss,'superposition',c)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>fname</tt>
%          </td>
%          <td>
%                <p>filename(s)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>h1,...,hN</tt>
%          </td>
%          <td>
%                <p>[[Miller_index.html,Miller]] crystal directions</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>c1,...,cN</tt>
%          </td>
%          <td>
%                <p>structure coefficients for superposed pole figures (optional)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>cs, ss</tt>
%          </td>
%          <td>
%                <p>crystal, specimen [[symmetry_index.html,symmetry]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control loadPoleFigure<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'interface'</tt>
%                   </td>
%                   <td>
%                         <p>specific interface to be used</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'comment'</tt>
%                   </td>
%                   <td>
%                         <p>comment to be associated with the data</p>
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
%             <tt>pf</tt>
%          </td>
%          <td>
%                <p>vector of [[PoleFigure_index.html,PoleFigure]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ImportPoleFigureData PoleFigure/calcODF examples_index
%