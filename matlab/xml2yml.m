function xml2yml(inFile,outFile,title)

s = fileread(inFile);

starts = strfind(s,'<tocitem');
ends = strfind(s,'</tocitem>');

urls = [];
names = urls;
level = urls;

for idx = 1:length(starts)
    link_start = strfind(s(starts(idx):end),'target="')+7+starts(idx);
    link_end = strfind(s(link_start:end),'"')-2+link_start(1);
    url = s(link_start(1):link_end(1));
    if ~contains(url,'#')
      urls = [ urls {url} ];

      name_end = strfind(s(link_end(1)+3:end),'<')+link_end(1);
      names = [ names {s(link_end(1)+3:name_end(1)+1)} ];

      level = [ level {idx-sum( ends < starts(idx) )-1} ];
    end
end

%% normal doc

subfoldermode = false;
s = sprintf('entries:\n- title: sidebar\n  product: %s\n  version:\n  folders:\n\n',title);
for idx = 2:length(urls)
  
  % ignore folder Function Reference
  if strcmp(names{idx},'Function Reference'), break; end
  indent = repmat('  ',1,level{idx}+subfoldermode);
  subs = repmat('sub',1,min(level{idx}-1,1));
%   if level{idx-1} == 1 && level{idx} == 2
%     s = [s indent sprintf('- title: "dummy"\n')];
%     s = [s indent sprintf('  url: /dummy.html\n')];
%     s = [s indent sprintf('  output: web\n\n')];
%   end
  if ~subfoldermode && level{idx} > 1 && idx < length(urls) && level{idx+1} > level{idx}
    subfoldermode = true;
    s = [s indent sprintf('  subfolders:\n')];
    indent = [indent '  '];
  end
  s = [s indent sprintf('- title: "%s"\n', names{idx})];
  s = [s indent sprintf('  url: /%s\n', urls{idx})];
  s = [s indent sprintf('  output: web\n')];
  if idx < length(urls) && level{idx+1} > level{idx}
     s = [s indent sprintf('  %sfolderitems:\n',subs)]; 
  end
  s = [s newline()];
  if idx < length(urls) && level{idx+1} < level{idx}-1
    subfoldermode = false;
  end
end

f = fopen(outFile,'w');
fwrite(f,s);
fclose(f);

end
