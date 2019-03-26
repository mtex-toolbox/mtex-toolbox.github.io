%% plotDiff
% (method of <ODF_index.html ODF>)
%% 
% difference plot between two odfs or an odf and a pole figure
% 
%
%% View Code
% 
%% Syntax
%   plotDiff(odf1,odf2,...,param,val,...)
%   plotDiff(odf,pf,...,param,val,...)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>odf1</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="ODF_index.html&#34;">ODF</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>odf2</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="ODF_index.html&#34;">ODF</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>pf</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="PoleFigure_index.html&#34;">PoleFigure</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control plotDiff<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'RP'</tt>
%                   </td>
%                   <td>
%                         <p>calculate RP error (only for odf - pole figure)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'l1'</tt>
%                   </td>
%                   <td>
%                         <p>calculate <equation>
%                               <img alt="$|pf1-pf2|$" class="equation" height="15px" src="ODF.plotDiff_tmp_eq00661105950522448015.png" width="70px"/>
%                            </equation> error (only for odf - pole figure)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'l2'</tt>
%                   </td>
%                   <td>
%                         <p>calculate <equation>
%                               <img alt="$|pf1-pf2|^2$" class="equation" height="17px" src="ODF.plotDiff_tmp_eq04602760823764185263.png" width="77px"/>
%                            </equation> error (only for odf - pole figure)</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% S2Grid/plot PoleFigure/calcError ODF/calcError savefigure
% Plotting Annotations_demo ColorCoding_demo PlotTypes_demo
% SphericalProjection_demo
%