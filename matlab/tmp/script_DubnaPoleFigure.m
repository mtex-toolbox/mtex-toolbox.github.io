%% DubnaPoleFigure
% construct pole figure using Dubna struct file
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>pf = DubnaPoleFigure(fname,h_id,data,CS,SS,'param1',val1,'param2',val2)</tt>
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
%                <p>crystal struct file</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>h_id</tt>
%          </td>
%          <td>
%                <p>lines in this struct file corresponding to one peak</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>data</tt>
%          </td>
%          <td>
%                <p>intensities of this peak with respect to the Dubna Grid</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS, SS</tt>
%          </td>
%          <td>
%                <p>crystal / specimen symmetry</p>
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
%             <tt>pf</tt>
%          </td>
%          <td>
%                <p>single PoleFigure</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 