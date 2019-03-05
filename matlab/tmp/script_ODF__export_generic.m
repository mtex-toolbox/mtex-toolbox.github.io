%% export_generic
% (method of [[ODF_index.html,ODF]])
%% 
% export an ODF to an ASCII file
% 
%
%% View Code
% 
%% Syntax
%   export(odf,'file.txt',S3G)
%   export(odf,'file.txt',regular,'resolution',2.5*degree)
%   export(odf,'file.txt',regular,'resolution',2.5*degree)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>odf</tt>
%          </td>
%          <td>
%                <p>ODF to be exported</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>filename</tt>
%          </td>
%          <td>
%                <p>name of the ascii file</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control export_generic<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'weights'</tt>
%                   </td>
%                   <td>
%                         <p>export weights of the ODF components</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ZYZ, ABG'</tt>
%                   </td>
%                   <td>
%                         <p>Matthies (alpha, beta, gamma) convention (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ZXZ,BUNGE'</tt>
%                   </td>
%                   <td>
%                         <p>Bunge (phi1,Phi,phi2) convention</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ODFImportExport
%