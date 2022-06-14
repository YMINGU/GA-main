function [] = write_lsf(obj, filename)
   %filename = fopen(filename, 'w');
    write_lsf_set_property_line(filename, 'material', obj.Material);  
  if strcmp(obj.Material,'Object defined dielectric')
    write_lsf_set_property_line(filename, 'index', obj.Index);
    write_lsf_set_property_line(filename, 'index units', obj.IndexUnits);
  end
  
    write_lsf_set_property_line(filename, 'override mesh order from material database',...
    obj.OverrideMeshOrderFromMaterialDatabase);
  
  if obj.OverrideMeshOrderFromMaterialDatabase == 1
    write_lsf_set_property_line(filename, 'mesh order', obj.MeshOrder);
  end
  
    write_lsf_set_property_line(filename, 'grid attribute name', obj.GridAttributeName);
    %fclose(filename);
end

