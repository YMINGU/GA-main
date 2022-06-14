function [] = write_lsf(obj,filename)

  fid = fopen(filename, 'a');
  fclose(fid);

end

