%% calcMIndex
% (method of [[ODF_index.html,ODF]])
%% 
% Computes the M-index from an odf - in contrast to using a discrete number
% of orientations (Skemer et al., 2005).
% The M-index is derived from the difference between
% uncorrelated and uniform misorientation angle distributions
% 
% Reference
% Skemer, P., Katayama, I., Jiang, Z. & Karato, S.-I. (2005)
% The misorientation index: development of
% a new method for calculating the strength of latticepreferred
% 
% Recommended read:
% Schaeben, H., (2007) Comment on ÿThe misorientation index: Development
% of a new method for calculating the strength of lattice-preferred
% orientationÿ by Philip Skemer, Ikuo Katayama, Zhenting Jiang, Shun-ichiro Karato.
% Tectonophysics 441, 115ÿ117
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
%          <tt>MI = calcMIndex(odf)</tt>
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
%             <tt>odf</tt>
%          </td>
%          <td>
%                <pre>@odf</pre>
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
%                <p>id Mainprice 04/01/2015</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% orientation/calcMIndex
%