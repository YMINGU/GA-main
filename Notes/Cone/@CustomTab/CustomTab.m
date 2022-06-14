classdef CustomTab < handle & matlab.System
  properties
    Name;
    Equation1;
    EquationUnits;
    Create3DObjectBy;
  end
    
  methods
    function obj = CustomTab()
       obj.Name = 'conetop';
       obj.Equation1 = '?eqn = num2str((rTop1-rBot1)/h1)+"*(x+"+num2str(rBot1/(rBot1-rTop1)/h1))*1e6)+")"';
    end
    
    function set.EquationUnits(obj, equationUnits)
        options = {'m', 'microns', 'nm'};
        obj.EquationUnits = set_value_from_list(options, equationUnits);
    end
    
    function set.Create3DObjectBy(obj, create3DObjectBy)
        options = {'extrusion', 'revolution'};
        obj.Create3DObjectBy = set_value_from_list(options, create3DObjectBy);
    end
    
  end
    
    methods(Static)
        test();
    end
end
