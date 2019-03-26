%% transformReferenceFrame
% (method of <orientation_index.html orientation>)
%% 
% change reference frame of an orientation
% 
% Orientations are always described with respect to a cartesian reference
% frame x, y, z aligned in a fixed way with the crystal coordiante system
% 
%                                  <html>
%                                     <table class="usertable">
%                                        <tr>
%                                           <td>
%                                                 <p>a and z</p>
%                                           </td>
%                                           <td>
%                                                 <p>c* or x</p>
%                                           </td>
%                                           <td>
%                                                 <p>a* and z</p>
%                                           </td>
%                                        </tr>
%                                     </table>
%                                  </html>
% 
% function allows to change the aligment of the reference frame while NOT
% changing the orientation.
% 
%
%% View Code
% 
%% Syntax
%   ori = ori.transformReferenceFrame(cs)
%   mori = mori.transformReferenceFrame(cs1,cs2)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="orientation_index.html&#34;">orientation</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>mori</tt>
%          </td>
%          <td>
%                <p>misorientation</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>cs, cs1, cs2</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="crystalSymmetry_index.html&#34;">crystalSymmetry</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 