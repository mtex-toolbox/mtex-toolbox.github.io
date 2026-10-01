function galleryFitImage(file,varargin)
% Centre the complete visible plot, including labels, on the card canvas.
% MATLAB axes layouts can leave asymmetric outer margins. Remove only the
% surrounding white pixels, then fit the plot without changing its aspect.
% galleryFitImage(file,'trim') only removes the white margin.
% galleryFitImage(file,'trim','transparent') also clears the white background.

rgb = imread(file);
ink = any(rgb < 250,3);
rows = find(any(ink,2));
cols = find(any(ink,1));
if isempty(rows) || isempty(cols), error('Gallery:EmptyImage','Empty thumbnail: %s',file); end
rgb = rgb(rows(1):rows(end),cols(1):cols(end),:);
if check_option(varargin,'transparent')
  imwrite(rgb,file,'Alpha',uint8(255*~background(rgb)));
  return
end
if check_option(varargin,'trim'), imwrite(rgb,file); return; end
canvasSize = [720 960];
padding = 18;
scale = min((canvasSize-2*padding)./size(rgb,[1 2]));
plotSize = max(1,round(size(rgb,[1 2])*scale));
% interp2 is part of MATLAB and does not require Image Processing Toolbox.
[x,y] = meshgrid(linspace(1,size(rgb,2),plotSize(2)),...
  linspace(1,size(rgb,1),plotSize(1)));
canvas = repmat(uint8(255),[canvasSize 3]);
offset = floor((canvasSize-plotSize)/2);
for channel = 1:3
  pixels = uint8(interp2(single(rgb(:,:,channel)),x,y,'linear'));
  canvas(offset(1)+(1:plotSize(1)),offset(2)+(1:plotSize(2)),channel) = pixels;
end
imwrite(canvas,file);
end

function bg = background(rgb)
% the white connected to the border, so that white highlights inside the plot stay
white = all(rgb >= 235,3);
bg = false(size(white));
bg([1 end],:) = white([1 end],:);
bg(:,[1 end]) = white(:,[1 end]);
grown = true;
while grown
  next = bg | [false(1,size(bg,2)); bg(1:end-1,:)] | [bg(2:end,:); false(1,size(bg,2))] ...
    | [false(size(bg,1),1), bg(:,1:end-1)] | [bg(:,2:end), false(size(bg,1),1)];
  next = next & white;
  grown = any(next(:) & ~bg(:));
  bg = next;
end
end
