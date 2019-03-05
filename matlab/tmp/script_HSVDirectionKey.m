%% HSVDirectionKey
% converts crystal or specimen directions to rgb values
% 
% The priciple idea is to take the fundamental sector, apply white to the
% center and red, blue and green to the vertices. This works well if all
% the edges of the fundamental sector are reflections, i.e. for for m, mm2,
% mmm, 3m, 4mm, 4/mmm, 6mm, -62m, 6/mmm, -43m, m-3m.
% In almost all other cases the fundamental sector can be divided by an
% additional reflection into two subsectors which are colored one with
% white and one with black center.
% There are three cases, -1, -3, -4, where this does not work. Actually one
% can show that in this cases it is impossible to have a smooth one to one
% relation between the color space and the fundamental sector.
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>dM = HSVDirectionKey('param1',val1,'param2',val2)</tt>
%       </div>
%    </div>
% </html>
% 