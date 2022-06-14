classdef RotationsTab < handle & matlab.System
  properties
    FirstAxis@char;
    SecondAxis@char;
    ThirdAxis@char;
    Rotation1@double;
    Rotation2@double;
    Rotation3@double;
  end
  
  methods
    function obj = RotationsTab()
      if nargin == 0
      end
    end
    
    function set.FirstAxis(obj, firstAxis)
      options = {'none', 'x', 'y', 'z'};
      obj.FirstAxis = set_value_from_list(options, firstAxis);
    end
  
  
    function set.SecondAxis(obj, secondAxis)
      options = {'none', 'x', 'y', 'z'};
      obj.SecondAxis = set_value_from_list(options, secondAxis);
    end
    
    function set.ThirdAxis(obj, thirdAxis)
      options = {'none', 'x', 'y', 'z'};
      obj.ThirdAxis = set_value_from_list(options, thirdAxis);
    end
    
  end
  methods (Static)
    test();
  end
end