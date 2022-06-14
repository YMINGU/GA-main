classdef NCTop
    
  properties
    rTop1 % top radius of cone on the top
    rBot1 % bottom radius of cone on the top
    a1    % pitch of the cone on the top
    h1    % height of the cone on the top
    t     % thickness of the thinfilm, not the effectivethickness
    material
  end
  
  properties (SetAccess = private, Dependent = true)
    filename
  end
  
  properties (Hidden)
    film
    cone
  end
  
  methods
    function obj = NCTop (rTop1, rBot1, a1, h1,t, material)      
      obj.film = Rectangle(a1, t);   % may need to set additional variable
      obj.cone = Cone(rTop1, rBot1, h1); 
      obj.material = material;
    end
    
    function filename = get.filename(obj)
      filename = [obj.material.Type, 'NCToprTop1', num2str(obj.rTop1), 'rBot1', num2str(obj.rBot1), 'a1',
        num2str(obj.a1), 'h1', num2str(obj.h1), 't', num2str(obj.t)];
    end

%     function set.t(obj, zSpan)
%        obj.film.t= zSpan;      
%      end     
%      
%      function set.a1(obj, xSpan)
%        obj.film.a1= xSpan;      
%      end        
%      
%      function set.h1(obj, conezSpan)
%        obj.cone.h1= conezSpan;      
%      end    
%      
%      function set.rTop1(obj, rtop)
%        obj.cone.rTop1= rtop;      
%      end 
%      
%      function set.rBot1(obj, rbot)
%        obj.cone.rBot1= rbot;      
%      end  
%      
%      function set.material(obj, filmMaterial)
%        obj.film.material = filmMaterial;
%      end
  
    function t = get.t(obj)
       t = obj.Film.t;
     end    
     
     function a1 = get.a1(obj)
       a1 = obj.Film.a1;
     end    
     
     function h1 = get.h1(obj)
       h1 = obj.Cone.h1;
     end    
     
     function rTop1 = get.rTop1(obj)
       rTop1 = obj.Cone.rTop1;
     end
     
     function rBot1 = get.rBot1(obj)
       rBot1 = obj.Cone.rBot1;
     end 

     function material = get.material(obj)
       material = obj.Film.material;
     end
     
%     function filmCone = createStructure(effectiveThickness, zSpan, xSpan,conezSpan, rtop, rbot)
%       if nargin == 4
%         conezSpan = xSpan^2*(equivalentThickness - zSpan)/pi/(rtop^2);
%       elseif nargin == 5
%        conezSpan = 3*xSpan^2*(equivalentThickness - zSpan)/pi/(rtop^2+rtop*rbot+rbot^2);
%       end
%     end
  end
    
    methods (Static)
      test();
    end
  
  
end