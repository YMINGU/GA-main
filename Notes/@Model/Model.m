classdef Model < handle
  properties
    Structure;
    Source;
    Monitor1;
    Monitor2;
    SimulationCell;
  end

  methods
    function obj = Model(structure, source, monitor1, monitor2, simulationcell)
      if nargin == 0
        obj.Structure = structure;
        obj.Source = source;
        obj.Monitor1 = monitor1;
        obj.Monitor2 = monitor2;
        obj.SimulationCell = simulationcell;
      else
        obj.Structure = structure;
        obj.Source = source;
        obj.Monitor1 = monitor1;
        obj.Monitor2 = monitor2;
        obj.SimulationCell = simulationcell;
      end
    end
  end

  methods(Static)
    test();
  end
end