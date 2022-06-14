classdef RectangleFDTD < handle
  properties
    Geometry;
    MaterialTab;
    Rotations;
    GraphicalRendering;
  end
  
  properties(Dependent)
    a;
    t;
    zMax;
  end
  
  methods
    function obj = RectangleFDTD(t, a1, materialString)
      if nargin == 0
        obj.Geometry = RectangleGeometryTab();
        obj.MaterialTab =MaterialTab();
        obj.MaterialTab.Material = materialString;
        obj.Rotations = RotationsTab();
        obj.GraphicalRendering = GraphicalRenderingTab();
      else
        obj.Geometry = RectangleGeometryTab();
        obj.Geometry.XSpan = a1;
        obj.Geometry.YSpan = a1;
        obj.Geometry.ZSpan = t;
        obj.MaterialTab =MaterialTab();
        obj.MaterialTab.Material = materialString;
        obj.Rotations = RotationsTab();
        obj.GraphicalRendering = GraphicalRenderingTab();
      end
    end
    
    % Determine if the input is object of specified class
    function set.Geometry(obj, value)
      if isa(value, 'RectangleGeometryTab')
         obj.Geometry = value;
      else
        error('obj.Geometry must be of class RectangleGeometryTab');
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
      
      function zMax = get.zMax(obj)
        zMax = obj.Geometry.ZMax;
      end
      
      function set.zMax(obj, value)
        obj.Geometry.ZMax = value;
      end
      
      function a = get.a(obj)
        a = obj.Geometry.XSpan;
      end
      
      function t = get.t(obj)
        t = obj.Geometry.ZSpan;
      end
      
      function set.a(obj,value)
        obj.Geometry.a = value;
      end
      
      function set.t(obj,value)
        obj.Geometry.t = value;
      end


      
  end
  
  methods (Static)
    test();
  end
end

  