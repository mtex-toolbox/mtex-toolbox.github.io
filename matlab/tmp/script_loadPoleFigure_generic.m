%% loadPoleFigure_generic
% load pole figure data from (theta,rho,intensity) files
% 
%
%% View Code
% 
%% Description
% 
% *loadPoleFigure_generic* is a generic function that reads any txt files of
% diffraction intensities that are of the following format
% 
%  theta_1 rho_1 intensity_1
%  theta_2 rho_2 intensity_2
%  theta_3 rho_3 intensity_3
%  .      .       .
%  .      .       .
%  .      .       .
%  theta_M rho_M intensity_M
% 
% The actual order of the columns in the file can be specified by the
% options |ColumnNames| and |Columns|. Furthermore, the files can be contain any number of
% header lines to be ignored using the option |HEADER|.
% 
%
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[pf,'param1',val1,'param2',val2] = loadPoleFigure_generic(fname,'param1',val1,'param2',val2)</tt>
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
%                <p>file name (text files only)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control loadPoleFigure_generic<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ColumnNames'</tt>
%                   </td>
%                   <td>
%                         <p>content of the columns to be imported</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Columns'</tt>
%                   </td>
%                   <td>
%                         <p>positions of the columns to be imported</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'RADIANS'</tt>
%                   </td>
%                   <td>
%                         <p>treat input in radians</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'DELIMITER'</tt>
%                   </td>
%                   <td>
%                         <p>delimiter between numbers</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'HEADER'</tt>
%                   </td>
%                   <td>
%                         <p>number of header lines</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example

fname = [mtexDataPath '/PoleFigure/nja/seifert-111.nja'];
pf = loadPoleFigure_generic(fname,'HEADER',21,'degree',...
'ColumnNames',{'polar angle','azimuth angle','intensity'},...
'Columns',[1 2 3])

%% 
% 

%% See also
% ImportPoleFigureData loadPoleFigure
%