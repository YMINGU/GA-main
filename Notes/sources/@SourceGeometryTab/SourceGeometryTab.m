classdef SourceGeometryTab < handle & matlab.System

% Implement UseRelativeCoordinates
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
    function obj = SourceGeometryTab()
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

    function xSpan = get.XSpan(obj)
      xSpan = obj.xCoordinates.Span;
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

    function ySpan = get.YSpan(obj)
      ySpan = obj.yCoordinates.Span;
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
    
    function zSpan = get.ZSpan(obj)
      zSpan = obj.zCoordinates.Span;
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
    
    function set.XSpan(obj, xSpan)
      if (xSpan < 0)
        error('Property value must be positive');
      else
        obj.xCoordinates.Span = xSpan;      
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
    
    function set.YSpan(obj, ySpan)
      if (ySpan < 0)
        error('Property value must be positive');
      else
        obj.yCoordinates.Span = ySpan;      
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
    
    function set.ZSpan(obj, zSpan)
      if (zSpan < 0)
        error('Property value must be positive');
      else
        obj.zCoordinates.Span = zSpan;
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

