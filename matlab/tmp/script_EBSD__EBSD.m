%% EBSD
% (method of [[EBSD_index.html,EBSD]])
%% 
% constructor
% 
% *EBSD* is the low level constructor for an *EBSD* object representing EBSD
% data. For importing real world data you might want to use the predefined
% <ImportEBSDData.html EBSD interfaces>. You can also simulate EBSD data
% from an ODF by the command <ODF.calcEBSD.html calcEBSD>.
% 
%
%% View Code
% 
%% Syntax
%   ebsd = EBSD(rotations,phases,CSList)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>orientations</tt>
%          </td>
%          <td>
%                <p>[[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS</tt>
%          </td>
%          <td>
%                <p>crystal / specimen [[symmetry_index.html,symmetry]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control EBSD<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'phase'</tt>
%                   </td>
%                   <td>
%                         <p>specifing the phase of the EBSD object</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'options'</tt>
%                   </td>
%                   <td>
%                         <p>struct with fields holding properties for each orientation</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'xy'</tt>
%                   </td>
%                   <td>
%                         <p>spatial coordinates n x 2, where n is the number of input orientations</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'unitCell'</tt>
%                   </td>
%                   <td>
%                         <p>for internal use</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ODF/calcEBSD EBSD/calcODF loadEBSD
%