%% max
% (method of <ODF_index.html ODF>)
%% 
% heuristic to find local modal orientations
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[m,ori]= max(odf,'param1',val1,'param2',val2)</tt>
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
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control max<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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
%             <tt>m</tt>
%          </td>
%          <td>
%                <p>maximum in multiples of the uniform ODF</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="orientation_index.html&#34;">orientation</a> where the maximum is atained</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
%  %find the local maxima of the [[SantaFe.html,SantaFe]] ODF
%  [m,ori] = max(SantaFe)
%  plotPDF(SantaFe,Miller(0,0,1,ori.CS))
%  annotate(ori)
% 
% 

%% See also
% ODF/calcModes
%