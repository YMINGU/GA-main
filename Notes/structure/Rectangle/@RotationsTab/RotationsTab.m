classdef RotationsTab < handle & matlab.System
  properties
    FirstAxis@char;
    SecondAxis@char;
    ThirdAxis@char;
    Rotation1@double;
    Rotation2@double;
    Rotation3@double;
    Rotation1_UserDefined@double;
    Rotation2_UserDefined@double;
    Rotation3_UserDefined@double;
  end
  
  methods
    function obj = RotationsTab()
      if nargin == 0
%         obj.FirstAxis = 'none';
%         obj.SecondAxis= 'none';
%         obj.ThirdAxis= 'none';
%         obj.Rotation1 = 0;
%         obj.Rotation2 = 0;
%         obj.Rotation3 = 0; %if no input, all the value will be default.
      end
    end
    
    function set.FirstAxis(obj, firstAxis)
      options = {'none', 'x', 'y', 'z'};
      obj.FirstAxis = set_value_from_list(options, firstAxis);
    end
  
  function rotation1 = get.Rotation1(obj)
    if strcmp(obj.FirstAxis, 'none') == 0
      rotation1 = obj.Rotation1_UserDefined;
    else
      rotation1 = obj.Rotation1;
    end
  end
    function set.SecondAxis(obj, secondAxis)
      options = {'none', 'x', 'y', 'z'};
      obj.SecondAxis = set_value_from_list(options, secondAxis);
    end
    function rotation2 = get.Rotation2(obj)
      if strcmp(obj.SecondAxis, 'none') == 0
        rotation2 = obj.Rotation2_UserDefined;
      else
        rotation2 = obj.Rotation2;
      end
    end
    function set.ThirdAxis(obj, thirdAxis)
      options = {'none', 'x', 'y', 'z'};
      obj.ThirdAxis = set_value_from_list(options, thirdAxis);
    end
    function rotation3 = get.Rotation3(obj)
      if strcmp(obj.ThirdAxis, 'none') == 0
        rotation3 = obj.Rotation3_UserDefined;
      else
        rotation3 = obj.Rotation3;
      end
    end
  end
  methods (Static)
   test();
  end
end