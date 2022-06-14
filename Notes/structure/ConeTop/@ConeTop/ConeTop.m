classdef ConeTop < handle

  properties
    Properties;
    Script;
    Rotations;
  end
  
  methods
    function obj = ConeTop(rTop1,rBot1, h1)
      if nargin == 0
        % Default values
        obj.Properties = PropertiesTab();
        obj.Script = ScriptTab();
        obj.Rotations = RotationsTab();
      elseif nargin == 3
        obj.Properties = PropertiesTab(rTop1,rBot1, h1);
        obj.Script = ScriptTab();
        obj.Rotations = RotationsTab();
      end
    end
    
  end
  
  methods(Static) 
    test();
  end
  
end