%% find
% (method of <S2Grid_index.html S2Grid>)
%% 
% return index of all points in a epsilon neighborhood of a vector
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>ind = find(S2G,v,epsilon)</tt>
%       </div>
%       <div>
%          <tt>ind = find(S2G,v)</tt>
%       </div>
%    </div>
%    <div class="syntax" width="100%">
%       <tt>ind = find(S2G,v,epsilon)</tt>
%          <span>find all points in a epsilon neighborhood of v</span>
%    </div>
%    <div class="syntax" width="100%">
%       <tt>ind = find(S2G,v)</tt>
%          <span>find closest point</span>
%    </div>
% </html>
% 
%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>S2G</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="S2Grid_index.html&#34;">S2Grid</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>epsilon</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control find<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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
%             <tt>ind</tt>
%          </td>
%          <td>
%                <p>int32</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 