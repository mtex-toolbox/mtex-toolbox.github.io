%% calcMIndex
% (method of [[orientation_index.html,orientation]])
%% 
% Computes the M-index from a discrete number of orientations
% (Skemer et al., 2005).
% The M-index is derived from the difference between
% uncorrelated and uniform misorientation angle distributions
% 
% Reference
% Skemer, P., Katayama, I., Jiang, Z. & Karato, S.-I. (2005)
% The misorientation index: development of
% a new method for calculating the strength of lattice preferred
% orientation. Tectonophysics, 411, 157-167.
% 
% Recommended read:
% Schaeben, H., (2007) Comment on ÿThe misorientation index: Development
% of a new method for calculating the strength of lattice-preferred
% orientationÿ by Philip Skemer, Ikuo Katayama, Zhenting Jiang, Shun-ichiro Karato.
% Tectonophysics 441, 115ÿ117.
% 
% Reference for the computational method using MTEX
% Mainprice, D., Bachmann, F., Hielscher, R., Schaeben, H. (2014)
% Descriptive tools for the analysis of texture projects with
% large datasets using MTEX: strength, symmetry and components.
% In: Faulkner, D. R., Mariani, E. & Mecklenburgh, J. (eds)
% Rock Deformation from Field, Experiments and Theory:
% A Volume in Honour of Ernie Rutter. Geological Society, London,
% Special Publications, 409, http://dx.doi.org/10.1144/SP409.8
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>m = calcMIndex(ori,'param1',val1,'param2',val2)</tt>
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
%             <tt>ori</tt>
%          </td>
%          <td>
%                <pre>[[orientation_index.html,orientation]]</pre>
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
%             <tt>M</tt>
%          </td>
%          <td>
%                <p>ndex</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% odf/calcMIndex
%