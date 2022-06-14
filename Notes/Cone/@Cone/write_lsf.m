function [] = write_lsf (obj, filename)
fid = fopen(filename, 'w');
fprintf (fid, 'addcustom; \n');
obj.Geometry.write_lsf(fid);
obj.MaterialTab.write_lsf (fid);
obj.Rotations.write_lsf (fid);
obj.GraphicalRendering.write_lsf(fid);
obj.Custom.write_lsf(fid);

%fclose (filename);
end

%fprintf(fid, ['set('''script''', rTop1 =' num2str(obj.rTop) '\n'] % fid = fopen(filename, 'w+');
%fprintf(fid, 'addstructuregroup("conetop"); \n');
%fprintf (fid, 'addrect; \n');
%obj.Geometry.write_lsf(fid);
%obj.MaterialTab.write_lsf (fid);
%obj.GraphicalRendering.write_lsf(fid);
