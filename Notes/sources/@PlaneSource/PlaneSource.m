classdef PlaneSource < handle
  % add source
  properties
    General;
    Geometry;
    FrequencyWavelength;
    BeamOptions;
  end
  
%   properties(Dependent)
%     Geometry;
%   end
  
 methods
    function obj = PlaneSource()
      if nargin == 0     % Default values
        obj.General = SourceGeneralTab();
        obj.Geometry = SourceGeometryTab();
        obj.FrequencyWavelength = SourceFrequencyTab();
        obj.BeamOptions = PlaneSourceBeamOptionsTab();
      end
    end
    
%     function geometry = get.Geometry(obj)
%       geometry = obj.General.Geometry;
%     end
    
  end
  
  methods(Static) 
    test();
  end
  
end



