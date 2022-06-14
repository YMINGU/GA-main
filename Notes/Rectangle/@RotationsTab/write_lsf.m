function [] = write_lsf(obj, filename)
%fileID = fopen(create_lsf_filename(filename), 'w');
write_lsf_set_property_line(filename, 'first axis', obj.FirstAxis);
if ~strcmp(obj.FirstAxis,'none')
  write_lsf_set_property_line(filename, 'rotation 1', obj.Rotation1);
end
write_lsf_set_property_line(filename, 'second axis', obj.SecondAxis);
if ~strcmp(obj.SecondAxis,'none')
  write_lsf_set_property_line(filename, 'rotation 2', obj.Rotation2);
end
write_lsf_set_property_line(filename, 'third axis', obj.ThirdAxis);
if ~strcmp(obj.ThirdAxis,'none')
  write_lsf_set_property_line(filename, 'rotation 3', obj.Rotation3);
end
% fclose(fileID);
end
