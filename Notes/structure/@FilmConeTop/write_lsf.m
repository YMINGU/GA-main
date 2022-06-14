function [] = write_lsf(obj, filename)
  fid = fopen(create_lsf_filename(filename), 'a');
  fprintf(fid, '# clear all existed contents \n');
  fprintf(fid, 'selectall; \n');
  fprintf(fid, 'delete; \n');
  
  fprintf (fid, '# create Conestucture on rectangle thin fim top; \n');
  fprintf (fid, '# for rectangle, the input parameter is a1t and materialString. for conetop, inputs are rTop1, rBot1 and h1; \n');
  
  obj.Film.write_lsf(filename);
  obj.Cone.write_lsf(filename);
  
  fprintf (fid, '# addsource; \n');
  fclose(fid); 
end
