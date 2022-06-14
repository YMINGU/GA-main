classdef Cone < handle
  properties
    Geometry;
    Custom;
    MaterialTab;
    Rotations;
    GraphicalRendering;
    %Properties;
    %Script;
  end
  
  methods
    function obj = Cone(rTop1, rBot1, h1, materialString) 
      obj.Geometry = GeometryTab();
      obj.Geometry.XSpan = rTop1;
      obj.Geometry.YSpan = rBot1;
      obj.Geometry.ZSpan = h1;
      obj.MaterialTab = MaterialTab();
      obj.MaterialTab.Material = materialString;
      obj.GraphicalRendering = GraphicalRenderingTab();
      obj.Rotations = RotationsTab();
      obj.Custom = CustomTab();
      
      %obj.Properties = PropertiesTab();
      %obj.Script = ScriptTab();
    end
    
    function set.Geometry(obj, value)
      if isa(value, 'GeometryTab')
         obj.Geometry = value;
      else
        error('obj.Geometry must be of class GeometryTab');
      end
    end
    
      function set.MaterialTab(obj, value)
        if isa(value, 'MaterialTab')
          obj.MaterialTab = value;
        else
          error('obj.MaterialTab must be of class MaterialTab');
        end
      end
      
      function set.Rotations(obj, value)
        if isa(value, 'RotationsTab')
          obj.Rotations = value;
        else
          error('obj.Rotations must be of class RotationsTab');
        end
      end
      
      function set.GraphicalRendering(obj, value)
        if isa(value, 'GraphicalRenderingTab')
          obj.GraphicalRendering = value;
        else
          error('obj.GraphicalRendering must be of class GraphicalRenderingTab');
        end
      end
    %function set.Script(obj, value)
       % if isa(value, 'ScriptTab')
          %obj.Script = value;
        %else
          %error('obj.Script must be of class ScriptTab');
        %end
    %end
    
     %function set.Properties(obj, value)
        %if isa(value, 'PropertiesTab')
          %obj.Properties = value;
        %else
          %error('obj.Properties must be of class PropertiesTab');
        %end
     %end
        
  end
  methods(Static)
    test();
  end
end
