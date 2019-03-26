%% calcComponents
% (method of <ODF_index.html ODF>)
%% 
% heuristic to find modal orientations
% 
%
%% View Code
% 
%% Syntax
%   [modes, volume] = calcComponents(odf)
%   [modes, weights,centerId] = calcComponents(odf,'seed',ori)
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
%                <p>
%                   <a href="ODF_index.html&#34;">ODF</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>initial list of <a href="orientation_index.html&#34;">orientation</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcComponents<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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
%                <p>modal <a href="orientation_index.html&#34;">orientation</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>volume</tt>
%          </td>
%          <td>
%                <p>volume of the component</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>centerId</tt>
%          </td>
%          <td>
%                <p>list of ids to which each initial ori converged to</p>
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