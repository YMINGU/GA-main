function [] = write_lsf(obj, filename)

  fid = fopen(create_lsf_filename(filename), 'a');
  
  fprintf(fid, '# \n');
  fprintf(fid, 'addpower; \n');
  fprintf(fid, '# \n');
  fclose(fid);
  
  obj.General.write_lsf(filename);
  obj.Geometry.write_lsf(filename);
  obj.DataToRecord.write_lsf(filename);
  obj.Spectral.write_lsf(filename); 
  obj.Advanced.write_lsf(filename);
  
end
