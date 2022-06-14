classdef ScriptTab < handle
    properties
        Name
        ConstructionGroup;
        Script;
    end
    
    methods
        function obj = ScriptTab()
          obj.Name = 'conetop';
          obj.ConstructionGroup = 1;
          obj.Script = ['rTop1 = 1e-6; rBot1 = 3e-6; zSpan = 6e-6;'...
                    '?theta=atan((rBot1-rTop1)/zSpan);'...
                    '?hTop=rTop1/tan(theta); addcustom;set("x",0); set("y",0);set("z",0);'...
                    'set("first axis","y"); set("rotation 1",90);'...
                    ' set("x span",2*max([rBot1, rTop1])); set("y span",2*max([rBot1, rTop1]));'...
                    'set("z span",zSpan); set("name","ConeTop");'...
                    'set("create 3D object by","revolution");'...
                    '?eqn = num2str(rTop1/hTop)+"*(x+"+num2str((zSpan/2+hTop)*1e6)+")";'...
                    'set("equation 1",eqn);'...
                    'set("material","Si (Silicon) - Palik")'];
       
        end

        function set.ConstructionGroup(obj, constructionGroup)
            obj.ConstructionGroup = set_check_box(constructionGroup);
        end
    end
    
    methods(Static)
        test();
    end
end