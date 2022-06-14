classdef FrequencyDomainFieldPower

  properties
    General;
    Geometry;
    DataToRecord;
    Spectral;
    Advanced;
  end
  
  methods
    function obj = FrequencyDomainFieldPower()
      if nargin == 0
        % Default values
        obj.General = FrequencyDomainFieldPowerGeneralTab();
        obj.Geometry = MonitorGeometryTab();
        obj.DataToRecord = MonitorDataToRecordTab();
        obj.Spectral = MonitorSpectralTab();
        obj.Advanced = MonitorAdvancedTab();
      end
    end
  end
  
  methods(Static) 
    test();
  end
  
end
