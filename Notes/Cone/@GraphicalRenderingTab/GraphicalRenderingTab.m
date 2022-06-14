classdef GraphicalRenderingTab < handle & matlab.System
  properties
    RenderType@char;
    Detail@double; % Slider which takes values between 0 and 1. By default it is set to 0.5. No effect on simulation
    OverrideColorOpacityFromMaterialDatabase@double;
    Alpha@double; % When selected, specify a value for ALPHA between 0 (transparent) and 1 (opaque) for the object
  end
  
  methods
    function obj = GraphicalRenderingTab()
      if nargin == 0
      end
    end
        
    function set.RenderType(obj, renderType)
      options = {'detailed', 'wireframe'};
      obj.RenderType = set_value_from_list(options,renderType);
    end
        
    function set.OverrideColorOpacityFromMaterialDatabase(obj,...
        overrideColorOpacityFromMaterialDatabase)
      obj.OverrideColorOpacityFromMaterialDatabase = set_check_box(...
         overrideColorOpacityFromMaterialDatabase);
    end
        
    function alpha = get.Alpha(obj)
      if obj.OverrideColorOpacityFromMaterialDatabase == 1
        alpha = 0.9;
      else
        alpha = obj.Alpha;
      end
    end      
  end
  methods(Static)
        test();
  end
end