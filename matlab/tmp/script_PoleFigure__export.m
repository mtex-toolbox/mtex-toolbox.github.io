%% export
% (method of [[PoleFigure_index.html,PoleFigure]])
%% 
% export pole figure in an ASCII file
% 
% the pole figure data for each crystal direction are stored in a seperate
% ASCII file. The ASCII file contains three columns - |theta| - |rho| -
% |intensity|, where (|theta|, |rho|) are the polar coordinates of the specimen
% directions and |intensity| is the diffraction intensity
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>export(pf,filename,'param1',val1,'param2',val2)</tt>
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
%             <tt>pf</tt>
%          </td>
%          <td>
%                <p>[[PoleFigure_index.html,PoleFigure]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>filename</tt>
%          </td>
%          <td>
%                <p>string</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control export<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'DEGREE'</tt>
%                   </td>
%                   <td>
%                         <p>theta / rho output in degree instead of radians</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% loadPoleFigure_generic
%