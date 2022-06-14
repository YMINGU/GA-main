classdef PropertiesTab < handle & matlab.System
  properties
    x@double;
    y@double;
    z@double;
    IndexType@char;
    IndexValue@double;
    MaterialType@char;
    MaterialValue@char;
    rTopType@char;
    rTopValue@double;
    rBottomType@char;
    rBottomValue@double;        
    zSpanType@char;
    zSpanValue@double;
  end 
  
  methods
    function obj = PropertiesTab(rTop1,rBot1, h1)
      if nargin==0
      else
        obj.x = 0;
        obj.y = 0;
        obj.z = 0;
        obj.IndexType = 'Number';
        obj.IndexValue = 1.4;
        obj.MaterialType = 'Material';
        obj.MaterialValue = 'Si (Silicon) - Palik';
        obj.rTopType = 'Length';
        obj.rTopValue = rTop1;  
        obj.rBottomType = 'Length';
        obj.rBottomValue = rBot1; 
        obj.zSpanType = 'Length';
        obj.zSpanValue = h1;
      end
    end
  end
    
  methods(Static)
    test();
  end
end