%% calcMisorientation
% (method of <EBSD_index.html EBSD>)
%% 
% calculate uncorrelated misorientations between two ebsd phases
% 
%
%% View Code
% 
%% Syntax
% 
%   % 1000 uncorrelated misorientations of phase1
%   mori = calcMisorientation(ebsd('phase1'),'sampleSize',1000)
% 
%   % uncorrelated misorientations with minimum distance 100
%   mori = calcMisorientation(ebsd('phase1'),'minDistance',100)
% 
%   %  uncorrelated misorientations between phase1 and phase2
%   mori = calcMisorientation(ebsd('phase1'),ebsd('phase2'))
% 
%   % compute pairs of orientations to be used to compute axis
%   % distributions in specimen coordinates
%   [ori1,ori2] = calcMisorientation(ebsd('phase1'))
%   plot(axis(ori1,ori2),'contourf')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>ebsd</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="EBSD_index.html&#34;">EBSD</a>
%                </p>
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
%                <p>
%                   <a href="orientation_index.html&#34;">orientation</a>, such that</p>
%                <p>
%                   <equation text="$$m = (g{_i}^{-1}*CS^{-1}) * (CS *\circ g_j)$$">
%                      <img alt="$$m = (g{_i}^{-1}*CS^{-1}) * (CS *\circ g_j)$$" class="equation" height="18px" src="EBSD.calcMisorientation_tmp_eq12272854558270220507.png" width="198px"/>
%                   </equation>
%                </p>
%                <p>or two neighbored orientations <equation>
%                      <img alt="$g_i, g_j$" class="equation" height="11px" src="EBSD.calcMisorientation_tmp_eq17370096838039086876.png" width="29px"/>
%                   </equation> with crystal <a href="symmetry_index.html&#34;">symmetry</a> 
%                   <equation>
%                      <img alt="$CS$" class="equation" height="11px" src="EBSD.calcMisorientation_tmp_eq05113710701194688000.png" width="21px"/>
%                   </equation> of he same phase located on a grain boundary.</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% 
%