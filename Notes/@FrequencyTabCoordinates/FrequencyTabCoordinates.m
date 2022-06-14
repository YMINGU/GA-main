classdef FrequencyTabCoordinates < handle
% COORDINATES class for FrequencyTab @ Source

properties(Dependent = true)
    Center@double; % in meters
    Span@double;   % in meters
  end
  
  properties
    Min@double;    % in meters
    Max@double;    % in meters
  end
  
  methods 
    
    function obj = FrequencyTabCoordinates(min, max)
      % Constructor
      if nargin == 0
%         obj.Center = 0;
%         obj.Span = 0.6;
      else
        obj.Min = min;
        obj.Max = max;
        obj.Center = center;
        obj.Span = span;
      end
    end
    
    function center = get.Center(obj)
      center = obj.Min/2 + obj.Max/2;
    end
    
    function span = get.Span(obj)
      span = obj.Max - obj.Min;
    end
    
    function set.Center (obj, center)
      span = obj.Span;
      obj.Max = center + span/2;
      obj.Min = center  - span/2;
    end
    
    function set.Span (obj, span)
      center = obj.Center;
      obj.Max = center + span/2;
      obj.Min = center  - span/2;
    end
    
    
%     function min = get.Min(obj)
%       min = obj.Center - obj.Span/2;
%     end
    
%     function max = get.Max(obj)
%       max = obj.Center + obj.Span/2;
%     end
 
%     function set.Min(obj, min)
%       if min > obj.Max
%         obj.Center = min;
%         obj.Span = 0;
%       else
%         max = obj.Max;
%         obj.Center = (min+max)/2;
%         obj.Span = max-min;
%       end
%     end
%     
%     function set.Max(obj, max)
%       if max < obj.Min
%         obj.Center = max;
%         obj.Span = 0;
%       else
%         min = obj.Min;
%         obj.Center = (min+max)/2;
%         obj.Span = max-min;
%       end
%     end
%     
  end
 
  methods(Static)
    test();
  end
  
end
 

