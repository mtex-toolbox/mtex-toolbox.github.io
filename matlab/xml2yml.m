function xml2yml(inFile,outFile,title)

if strcmp(title,'Functions')
  referenceSidebar(inFile,outFile,title);
  return
end

s = fileread(inFile);

starts = strfind(s,'<tocitem');
ends = strfind(s,'</tocitem>');

urls = [];
names = urls;
level = urls;

for idx = 1:length(starts)
    link_start = min(strfind(s(starts(idx):end),'target="')+7+starts(idx));
    link_end = strfind(s(link_start:end),'"')-2+link_start;
    url = s(link_start:link_end(1));
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

function referenceSidebar(inFile,outFile,title)
% write a function reference tree with class and helper folder nesting

dom=xmlread(inFile);
root=dom.getDocumentElement;
main=children(root);
chapters=children(main{1});
f=fopen(outFile,'w');
cleanup=onCleanup(@() fclose(f));
fprintf(f,'entries:\n- title: sidebar\n  product: %s\n  version:\n  folders:\n\n',title);
for k=1:numel(chapters)
  emit(f,chapters{k},2,true);
end
clear cleanup
text=regexprep(fileread(outFile),'\s+$','');
f=fopen(outFile,'w');
fprintf(f,'%s\n',text);
fclose(f);
end

function nodes=children(parent)
nodes={};
list=parent.getChildNodes;
for k=0:list.getLength-1
  node=list.item(k);
  if strcmp(char(node.getNodeName),'tocitem')
    nodes{end+1}=node; %#ok<AGROW>
  end
end
end

function emit(f,node,indent,chapter)
space=repmat(' ',1,indent);
name=strtrim(char(node.getFirstChild.getNodeValue));
url=char(node.getAttribute('target'));
kids=children(node);
fprintf(f,'%s- title: %s\n%s  url: /%s\n%s  output: web\n', ...
  space,jsonencode(name),space,url,space);
if ~isempty(kids)
  if chapter
    fprintf(f,'%s  folderitems:\n%s    subfolders:\n',space,space);
    childIndent=indent+4;
  else
    targets=cellfun(@(n) char(n.getAttribute('target')),kids,'UniformOutput',false);
    if any(endsWith(targets,'_index.html'))
      fprintf(f,'%s  type: group\n',space);
    end
    fprintf(f,'%s  subfolderitems:\n',space);
    childIndent=indent+2;
  end
  for k=1:numel(kids)
    emit(f,kids{k},childIndent,false);
  end
end
fprintf(f,'\n');
end
