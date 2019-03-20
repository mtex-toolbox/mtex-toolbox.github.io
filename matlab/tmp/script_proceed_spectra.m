%% proceed_spectra
% procede Dubna spectra
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[sumdetector,sumphi,sumspectr,peaks,bgpeaks] = proceed_spectra(spec,bg,range,peakpositions)</tt>
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
%             <tt>spec</tt>
%          </td>
%          <td>
%                <p>spectra</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>bg</tt>
%          </td>
%          <td>
%                <p>background</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>range</tt>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>peakpositions</tt>
%          </td>
%          <td>
%                <p>double</p>
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
%             <tt>sumdetector</tt>
%          </td>
%          <td>
%                <p>sum over all detectors (range x 72)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>sumphi</tt>
%          </td>
%          <td>
%                <p>sum over all phi (range x 19)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>sumspectr</tt>
%          </td>
%          <td>
%                <p>sum over all spectra (72 x 19)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>peaks</tt>
%          </td>
%          <td>
%                <p>peak sums (peaks x 72 x 19)</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 