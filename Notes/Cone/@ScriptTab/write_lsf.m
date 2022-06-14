function [] = write_lsf(obj, filename)
  write_lsf_set_property_line(filename, 'Script', obj.Script);
end
