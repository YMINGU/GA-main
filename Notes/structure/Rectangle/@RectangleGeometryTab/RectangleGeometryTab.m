classdef RectangleGeometryTab < handle & matlab.System
 
% Implement UseRelativeCoordinates
% Should we create Coordinates without default parameters?
% Need to implement UseRelativeCoordinates
  
  properties (Logical)
    UseRelativeCoordinates@double;
  end
    
  properties(Dependent)
    X@double;
    XSpan@double;
    XMin@double;
    XMax@double;
    Y@double;
    YSpan@double;
    YMin@double;
    YMax@double;
    Z@double;
    ZSpan@double;
    ZMin@double;
    ZMax@double;
  end
  
  properties
    xCoordinates; 
    yCoordinates; 
    zCoordinates;
  end
  
  methods
    function obj = RectangleGeometryTab()
      obj.xCoordinates = Coordinates();
      obj.yCoordinates = Coordinates();
      obj.zCoordinates = Coordinates();
    end
    
    function set.UseRelativeCoordinates(obj, useRelativeCoordinates)
      obj.UseRelativeCoordinates = set_check_box(useRelativeCoordinates);
    end   
    
    function x = get.X(obj)
      x = obj.xCoordinates.Center;
    end
 
    function a1 = get.XSpan(obj)
      a1 = obj.xCoordinates.Span;
    end
    
    function xMin = get.XMin(obj)
      xMin = obj.xCoordinates.Min;
    end
 
    function xMax = get.XMax(obj)
      xMax = obj.xCoordinates.Max;
    end
    
    function y = get.Y(obj)
      y = obj.yCoordinates.Center;
    end
 
    function a1 = get.YSpan(obj)
      a1 = obj.yCoordinates.Span;
    end
 
    function yMin = get.YMin(obj)
      yMin = obj.yCoordinates.Min;
    end
 
    function yMax = get.YMax(obj)
      yMax = obj.yCoordinates.Max;
    end
 
    function z = get.Z(obj)
      z = obj.zCoordinates.Center;
    end
    
    function t = get.ZSpan(obj)
      t = obj.zCoordinates.Span;
    end
    
 
    function zMin = get.ZMin(obj)
      zMin = obj.zCoordinates.Min;
    end
 
    function zMax = get.ZMax(obj)
      zMax = obj.zCoordinates.Max;
    end
 
    function set.X(obj, x)
      obj.xCoordinates.Center = x;
    end
    
    function set.XSpan(obj, a1)
      if (a1 < 0)
        error('Property value must be positive');
      else
        obj.xCoordinates.Span = a1;      
      end
    end
    
    function set.XMin(obj, xMin)
      obj.xCoordinates.Min = xMin;
    end
   
    function set.XMax(obj, xMax)
      obj.xCoordinates.Max = xMax;
    end
    
    function set.Y(obj, y)
      obj.yCoordinates.Center = y;
    end
    
    function set.YSpan(obj, a1)
      if (a1 < 0)
        error('Property value must be positive');
      else
        obj.yCoordinates.Span = a1;      
      end
    end
 
    function set.YMin(obj, yMin)
      obj.yCoordinates.Min = yMin;
    end
 
    function set.YMax(obj, yMax)
      obj.yCoordinates.Max = yMax;
    end
 
    function set.Z(obj, z)
      obj.zCoordinates.Center = z;
    end
    
    function set.ZSpan(obj, t)
      if (t < 0)
        error('Property value must be positive');
      else
        obj.zCoordinates.Span = t;
      end
    end
 
    function set.ZMin(obj, zMin)
      obj.zCoordinates.Min = zMin;
    end
 
    function set.ZMax(obj, zMax)
      obj.zCoordinates.Max = zMax;
    end
 
  end
 
  methods(Static)
   test();
    
  end
  
end
 

