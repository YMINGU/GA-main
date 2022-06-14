function [] = write_lsf(obj, filename)
   %filename = fopen(filename, 'w');
    write_lsf_set_property_line(filename, 'equation1', obj.Equation1);  
    write_lsf_set_property_line(filename, 'create 3D object by', obj.Create3DObjectBy);
    write_lsf_set_property_line(filename, 'equation units', obj.EquationUnits)
end

