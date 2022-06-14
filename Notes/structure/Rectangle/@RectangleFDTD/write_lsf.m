function [] = write_lsf (obj, filename)
fid = fopen(create_lsf_filename(filename), 'a');
fclose(fid);

%fid = fopen(filename, 'a');
%fprintf(fid, 'addrect; \n');
%fprintf (fid, 'create Conestucture on rectangle thin fim; \n');
obj.Geometry.write_lsf(filename);
obj.MaterialTab.write_lsf (filename);
obj.Rotations.write_lsf (filename);
obj.GraphicalRendering.write_lsf(filename);
%fclose(fid);
end

