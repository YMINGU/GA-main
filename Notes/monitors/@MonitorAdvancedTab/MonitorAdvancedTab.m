classdef MonitorAdvancedTab < handle
    
    properties
        SpatialInterpolation;
        Override;
        MinSamplingPercycle;
%         DesiredSampling
%         NyquistLimit
%         AcutalSampling
%         DownSampletime
    end
    
    methods
        function obj = MonitorAdvancedTab(varargin)
            if nargin == 0
%                 obj.SpatialInterpolation = 'nearest mesh cell';
%                 obj.Override = 0;
%                 obj.MinSamplingPercycle = 2;
            else
                obj.SpatialInterpolation = 'nearest mesh cell';
                obj.Override = 1;
                obj.MinSamplingPercycle = 2;
            end
        end
        
        function minSamplingPercycle = get.MinSamplingPercycle(obj)
            if obj.Override == 1
                minSamplingPercycle = obj.MinSamplingPercycle;
            else
                minSamplingPercycle = obj.MinSamplingPercycle;
            end
        end
        
        function set.SpatialInterpolation(obj, spatialInterpolation)
            options = {'specified postion', 'nearest mesh cell', 'none'};
            obj.SpatialInterpolation = set_value_from_list(options, spatialInterpolation);
        end
        
        function set.Override(obj, override)
            obj.Override = set_check_box(override);
        end
    end
    
    methods(Static)
        test();
    end
end