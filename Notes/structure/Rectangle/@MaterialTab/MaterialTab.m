classdef MaterialTab < handle & matlab.System
  properties
    MeshOrder@double;
    Material@char;
    Index@double;
    IndexUnits@char;
    OverrideMeshOrderFromMaterialDatabase@double;
    GridAttributeName@char;
  end
    
  methods
    function obj = MaterialTab()
       if nargin == 0
%          obj.OpticalMaterial = 'Si (Silicon) - Palik';
%          obj.Index = 1.4;
%          obj.IndexUnits = 'microns';
%          obj.OverrideMeshOrderFromMaterialDatabase = 0;
%          obj.MeshOrder = 2;
%          obj.GridAttributeName = '';
       end
    end
    
    function set.Material(obj, Material)
      options = {'Object defined dielectric', 'Ag (Silver) - CRC', 'Al2O3 - Palik', 'Au (Gold) - Palik', 'TiO2',...
                'InSb', 'SiO2 (Glass) - Palik', 'Si (Silicon) - Palik', 'TiO2', 'a-Si', 'etch'};
      obj.Material = set_value_from_list(options, Material);
    end
        
    function index = get.Index(obj)
      if strcmp(obj.Material, 'Object defined dielectric') == 1
        index = 1.4;
      else
        index = 'see material database';
      end
    end
        
    function set.IndexUnits(obj, indexUnits)
        options = {'m', 'microns', 'nm'};
        obj.IndexUnits = set_value_from_list(options, indexUnits);
    end
        
    function set.OverrideMeshOrderFromMaterialDatabase(obj, overrideMeshOrderFromMaterialDatabase)
        obj.OverrideMeshOrderFromMaterialDatabase = set_check_box(overrideMeshOrderFromMaterialDatabase);
    end        

    function meshOrder = get.MeshOrder(obj)
      if obj.OverrideMeshOrderFromMaterialDatabase == '1'
        meshOrder = obj.MeshOrder_UserDefined;
      else
        meshOrder = obj.MeshOrder;
      end
    end
  end
    
    methods(Static)
        test;
    end
end
