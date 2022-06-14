function [] = write_lsf(obj, filename)
 
  fid = fopen(create_lsf_filename(filename), 'a');
  %fprintf(fid, 'addobject("trunc_cone"); \n'); 
  fclose(fid);
  
  obj.Properties.write_lsf(filename);
  obj.Script.write_lsf(filename);
  obj.Rotations.write_lsf(filename);
   
end