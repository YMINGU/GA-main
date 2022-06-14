function [] = write_lsf(obj, filename)

  fid = fopen(filename, 'a');
   fprintf (fid, '# \n');
   fprintf (fid, '#values for SourceGeneralTab; \n');
   fprintf (fid, '# \n');
   fprintf(fid, 'addplane; \n');
 
  obj.General.write_lsf(filename);
  obj.Geometry.write_lsf(filename);
  obj.FrequencyWavelength.write_lsf(filename);
  obj.BeamOptions.write_lsf(filename);
  fclose(fid);
end

