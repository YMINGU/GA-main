function [] = write_lsf(obj, filename)
fid = fopen(filename, 'a');

write_lsf_set_property_line(fid, 'x', obj.X);
write_lsf_set_property_line(fid, 'x span', obj.XSpan);
write_lsf_set_property_line(fid, 'y', obj.Y);
write_lsf_set_property_line(fid, 'y span', obj.YSpan);
write_lsf_set_property_line(fid, 'z', obj.Z);
%write_lsf_set_property_line(fid, 'z span', obj.ZSpan);
%write_lsf_set_property_line(fid, 'z max', obj.ZMax);
write_lsf_set_property_line(fid, 'userelativecoordinates',obj.UseRelativeCoordinates);
fclose(fid);
end
