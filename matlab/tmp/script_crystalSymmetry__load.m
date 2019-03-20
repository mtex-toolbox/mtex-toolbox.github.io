%% load
% (method of [[crystalSymmetry_index.html,crystalSymmetry]])
%% 
% import crystal symmetry from phl or cif files
% 
% if cif file not found and input name is a valid COD entry, this function tries
% to download the file from [[http://www.crystallography.net/cif/,http://www.crystallography.net/cif/]]
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>cs = crystalSymmetry.load('5000035.cif')  load from cif file
%   cs = crystalSymmetry.load('copper.phl')  load from phl file
%   cs = crystalSymmetry.load(5000035)  lookup online</tt>
%       </div>
%    </div>
% </html>
% 
%% See also
% crystalSymmetry_index
% 
%