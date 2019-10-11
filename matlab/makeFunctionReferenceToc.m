function makeFunctionReferenceToc()

f = fopen('FunctionReferences.toc', 'r');
s = fread(f);
fclose(f);


out = sprintf('entries:\n- title: sidebar\n  product: Function References\n  version:\n  folders:\n\n');
line_start = 1;
subfolderhappend = false;

while line_start < length(s)
  line_end = find(s(line_start:end) == 10);
  line_end = line_end(1)+line_start-1;

  if s(line_start) ~= ' '
    foldername = sprintf("%s",s(line_start:line_end-1));
    out = [out ...
      sprintf('  - title: %s\n',foldername) ...
      sprintf('    output: web\n') ...
      sprintf('    folderitems:\n\n')];
    subfolderhappend = false;
  else
    middle = find(s(line_start+2:end) == ' ');
    middle = middle(1)+line_start+1;

    name = sprintf("%s",s(line_start+2:middle-1));
    title = sprintf("%s",s(middle+1:line_end-1));
    
    if ismethod(name,name) % isclass
      if ~subfolderhappend
        out = [out sprintf('      subfolders:\n')];
        subfolderhappend = true;
      end
      out = [out ...
        sprintf('      - title: %s\n',title) ...
        sprintf('        output: web\n') ...
        sprintf('        subfolderitems:\n\n')];
     
      methodfiles = dir(fullfile('..','pages','function_reference_matlab',sprintf("%s.*",name)));
      for idx = 1:length(methodfiles)
        methodname = methodfiles(idx).name;
        name_start = strfind(methodname,'.')+1;
        name_end = strfind(methodname,'.html')-1;
        methodname = methodname(name_start:name_end);
        if strcmp(methodname,name)
          out = [out ...
            sprintf('        - title: "%s"\n',methodname) ...
            sprintf('          url: /%s\n',methodfiles(idx).name) ...
            sprintf('          output: web\n\n')];
          idx_first = idx;
          break;
        end
      end
      for idx = 1:length(methodfiles)
        if idx ~= idx_first
          methodname = methodfiles(idx).name;
          name_start = strfind(methodname,'.')+1;
          name_end = strfind(methodname,'.html')-1;
          methodname = methodname(name_start:name_end);
          out = [out ...
            sprintf('        - title: "%s"\n',methodname) ...
            sprintf('          url: /%s\n',methodfiles(idx).name) ...
            sprintf('          output: web\n\n')];
        end
      end
    else
      out = [out ...
        sprintf('    - title: %s\n',title) ...
        sprintf('      url: /%s\n',name) ...
        sprintf('      output: web\n\n')];
    end
  end
  line_start = line_end+1;
end

f = fopen(['../_data/sidebars/function_reference_sidebar.yml'],'w');
fwrite(f,out);
fclose(f);

end