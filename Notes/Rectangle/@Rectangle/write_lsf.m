function [] = write_lsf (obj, filename)
fid = fopen(filename, 'w');
fprintf (fid, 'addrect; \n');
obj.Geometry.write_lsf(fid);
obj.MaterialTab.write_lsf (fid);
obj.Rotations.write_lsf (fid);
obj.GraphicalRendering.write_lsf(fid);

%fclose (filename);
end

