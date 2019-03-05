%% loadData
% import PoleFigure, EBSD, and ODF data
% 
%
%% View Code
% 
%% Description
% *loadData* is a low level method for importing EBSD, PoleFigure, ODF and
% Tensor data from external files. It autodetects the format of the file.
% As parameters the method requires a filename and the crystal and specimen
% [[symmetry_index.html,symmetry]].
% 
%
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[data,interface,options,idata] = loadData(fname,type,'param1',val1,'param2',val2)</tt>
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
%             <tt>fname</tt>
%          </td>
%          <td>
%                <p>filename</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>cs, ss</tt>
%          </td>
%          <td>
%                <p>crystal, specimen [[symmetry_index.html,symmetry]] (optional)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control loadData<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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
%             <tt>data</tt>
%          </td>
%          <td>
%                <p>[[EBSD_index.html,EBSD]], [[PoleFigure_index.html,PoleFigure]], [[ODF_index.html,ODF]], [[tensor_index.html,tensor]], [[vector3d_index.html,vector3d]], [[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ImportEBSDData EBSD/calcODF ebsd_demo loadEBSD_generic
%