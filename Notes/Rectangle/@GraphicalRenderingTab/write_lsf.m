function [] = write_lsf(obj, filename)
  %fileID = fopen(filename, 'w');
  write_lsf_set_property_line(filename, 'render type', obj.RenderType);
  write_lsf_set_property_line(filename, 'detail', obj.Detail);
  write_lsf_set_property_line(filename, 'override color opacity from material database',...
  obj.OverrideColorOpacityFromMaterialDatabase);
  write_lsf_set_property_line(filename, 'alpha', obj.Alpha);
  
end
