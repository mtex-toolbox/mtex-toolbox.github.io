%% calcModes
% (method of [[ODF_index.html,ODF]])
%% 
% heuristic to find modal orientations
% 
%
%% View Code
% 
%% Syntax
%   [modes, values] = calcModes(odf,n)
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
%                <p>[[ODF_index.html,ODF]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>n</tt>
%          </td>
%          <td>
%                <p>number of modes</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcModes<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'resolution'</tt>
%                   </td>
%                   <td>
%                         <p>search-grid resolution</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'accuracy'</tt>
%                   </td>
%                   <td>
%                         <p>in radians</p>
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
%             <tt>modes</tt>
%          </td>
%          <td>
%                <p>modal [[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>values</tt>
%          </td>
%          <td>
%                <p>values of the ODF at the modal [[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
% 

%find the local maxima of the [[SantaFe.html,SantaFe]] ODF
mode = calcModes(SantaFe)
plotPDF(SantaFe,Miller(0,0,1,mode.CS))
annotate(mode)

%% 
% 

%% See also
% ODF/max
%