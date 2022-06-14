classdef FDTDGeneralTab < handle
    properties
        Dimension;
        BackgroundIndex;
        SimulationTime;
        SimulationTemperature;
    end
    
    methods
        function obj = FDTDGeneralTab(backgroundIndex, simulationTime, simulationTemperature)
            if nargin == 0
%                 obj.Dimension = '3D';
%                 obj.BackgroundIndex = 1;
%                 obj.SimulationTime = 1000e-15; % in fs
%                 obj.SimulationTemperature = 300; % in K
            else
                obj.Dimension = '3D';
                obj.BackgroundIndex = backgroundIndex;
                obj.SimulationTime = simulationTime;
                obj.SimulationTemperature = simulationTemperature;
            end
        end
        
        function set.Dimension(obj, dimension)
            options = {'2D', '3D'};
            obj.Dimension = set_value_from_list(options, dimension);
        end
    end
    
    methods(Static)
        test();
    end
end
