function [] = write_lsf(obj, filename)
  write_lsf_set_property_line(filename, 'x', obj.x);
  write_lsf_set_property_line(filename, 'y', obj.y);
  write_lsf_set_property_line(filename, 'z', obj.z);
  write_lsf_set_property_line(filename, 'material', obj.MaterialValue);
  write_lsf_set_property_line(filename, 'rTop1', obj.rTopValue);
  write_lsf_set_property_line(filename, 'rBot1', obj.rBottomValue);
  write_lsf_set_property_line(filename, 'h1', obj.zSpanValue);
end
