classdef Rectangle < handle
  properties
    Geometry;
    MaterialTab;
    Rotations;
    GraphicalRendering;
  end
  
  methods
    function obj = Rectangle(t, a1, materialString)
      obj.Geometry = GeometryTab();
      obj.Geometry.XSpan = a1;
      obj.Geometry.YSpan = a1;
      obj.Geometry.ZSpan = t;
      obj.MaterialTab = MaterialTab();
      obj.MaterialTab.Material = materialString;
      obj.Rotations = RotationsTab();
      obj.GraphicalRendering = GraphicalRenderingTab();
    end
    
    % Determine if the input is object of specified class
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
  end
  
  methods (Static)
    test();
  end
end

  