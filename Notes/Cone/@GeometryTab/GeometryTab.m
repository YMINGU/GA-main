classdef GeometryTab < handle & matlab.System
  
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
  
  properties(Access = 'private')
    xCoordinates; 
    yCoordinates; 
    zCoordinates; 
  end
  
  methods
    function obj = GeometryTab()
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

    function rTop1 = get.XSpan(obj)
      rTop1 = obj.xCoordinates.Span;
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

    function rBot1 = get.YSpan(obj)
      rBot1 = obj.yCoordinates.Span;
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
    
    function h1 = get.ZSpan(obj)
      h1 = obj.zCoordinates.Span;
    end
    

    function zMin = get.ZMin(obj)
      zMin = obj.zCoordinates.Min;
    end

    function zMax = get.ZMax(obj)
      zMax = obj.zCoordinates.Max;
    end

    function set.X(obj, x)
      if (x < 0)
        error('Property value must be positive');
      else
      obj.xCoordinates.Center = x;
      end
    end
    
    function set.XSpan(obj, xSpan)
      if xSpan< 0
        error('Property value must be positive');
      else
        obj.xCoordinates.Span = xSpan;      
      end
    end
    
    function set.XMin(obj, xMin)
      %if (xMin < 0)
       % error('Property value must be positive');
      %else
      obj.xCoordinates.Min = xMin;
      %end
    end
   
    function set.XMax(obj, xMax)
      if (xMax < 0)
        error('Property value must be positive');
      else
      obj.xCoordinates.Max = xMax;
      end
    end
    
    function set.Y(obj, y)
      if (y < 0)
        error('Property value must be positive');
      else
      obj.yCoordinates.Center = y;
      end
    end
    
    function set.YSpan(obj, ySpan)
      if (ySpan < 0)
        error('Property value must be positive');
      else
        obj.yCoordinates.Span = ySpan;      
      end
    end
 
    function set.YMin(obj, yMin)
      %if (yMin < 0)
        %error('Property value must be positive');
      %else
      obj.yCoordinates.Min = yMin;
      %end
    end
 
    function set.YMax(obj, yMax)
      if (yMax < 0)
        error('Property value must be positive');
      else
      obj.yCoordinates.Max = yMax;
      end
    end

    function set.Z(obj, z)
      if (z < 0)
        error('Property value must be positive');
      else
      obj.zCoordinates.Center = z;
      end
    end
    
    function set.ZSpan(obj, h1)
      if (h1 < 0)
        error('Property value must be positive');
      else
        obj.zCoordinates.Span = h1;      
      end
    end
 
    function set.ZMin(obj, zMin)
      if (zMin < 0)
        error('Property value must be positive');
      else
      obj.zCoordinates.Min = zMin;
      end
    end
 
    function set.ZMax(obj, zMax)
      if (zMax < 0)
        error('Property value must be positive');
      else
      obj.zCoordinates.Max = zMax;
      end
    end

  end
 
  methods(Static)
    test();
    
  end
  
end

