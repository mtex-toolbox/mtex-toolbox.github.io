%% plotPDF
% (method of <ODF_index.html ODF>)
%% 
% plot pole figures
% 
%
%% View Code
% 
%% Syntax
%   plotPDF(odf,[h1,..,hN])
%   plotPDF(odf,{[h11,h12],h2,hN],'superposition',{[c11,c12],c2,cN})
%   plotPDF(odf,pf.h,'superposition',pf.c)
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
%             <tt>h</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="Miller_index.html&#34;">Miller</a> crystallographic directions</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>c</tt>
%          </td>
%          <td>
%                <p>structure coefficients</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control plotPDF<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'resolution'</tt>
%                   </td>
%                   <td>
%                         <p>resolution of the plots</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'superposition'</tt>
%                   </td>
%                   <td>
%                         <p>plot superposed pole figures</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the plotPDF behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'antipodal'</tt>
%                   </td>
%                   <td>
%                         <p>include [[AxialDirectional.html,antipodal symmetry]]</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'complete'</tt>
%                   </td>
%                   <td>
%                         <p>plot entire (hemi)-sphere</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% S2Grid/plot annotate savefigure Plotting Annotations_demo ColorCoding_demo PlotTypes_demo
% SphericalProjection_demo
%