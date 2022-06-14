function [] = write_lsf(obj, filename)

  
  fid = fopen(create_lsf_filename(filename), 'a');
  fprintf(fid, '# \n');
  fprintf(fid, 'addfdtd; \n');
  fprintf(fid, '#  \n');
  fclose(fid);
  
  obj.General.write_lsf(filename);
  obj.Geometry.write_lsf(filename);
  obj.MeshSettings.write_lsf(filename);
  obj.BoundaryConditions.write_lsf(filename);
  obj.AdvancedOptions.write_lsf(filename);
   
end
