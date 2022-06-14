classdef FilmConeTop < handle

  properties(Dependent)
  t;    %thickness of the thin film
  a1; %pitch of the cone
  h1; %height of the cone
  RTop; % top radium of the cone
  RBot; % bottom radium of the cone
  ConeZ; % the position of the cone
  FilmMaterial; %material of the film
  %ConeMaterial; % material of the  cone
  materialString;
  Volume;
  Area;
  EquivalentThickness;
end
properties
  Film;
  Cone;
end

methods
  function obj = FilmConeTop(t, a1, h1,rTop1, rBot1,materialString)
    if nargin ==0
      obj.Film = RectangleFDTD;
      obj.Cone = ConeTop;
    elseif nargin == 6
       obj.Film = RectangleFDTD(t, a1,materialString);
       obj.Cone = ConeTop(rTop1,rBot1, h1);
       obj.Cone.Properties.z = obj.ConeZ;
    end
  end
  function t = get.t(obj)
    t = obj.Film.Geometry.t;
  end
  
  function a1 = get.a1(obj)
    a1 = obj.Film.Geometry.a1;
  end
  
  function materialString = get.materialString(obj)
    materialString = obj.Film.MaterialTab.Material;
  end
  
  function h1 = get.h1(obj)
    h1 = obj.Cone.Properties.ZSpanValue;
  end
  
  function RTop = get.RTop(obj)
    RTop = obj.Cone.Properties.RTopValue;
  end
  
  function RBot = get.RBot(obj)
    RBot = obj.Cone.Properties.RBottomValue;
  end
  
  function ConeZ = get.ConeZ(obj)
    ConeZ = obj.Film.Geometry.ZSpan/2 + obj.Cone.Properties.zSpanValue/2;
  end
  
  function FilmMaterial = get.FilmMaterial(obj)
    FilmMaterial = obj.Film.MaterialTab.Material;
  end
  
%   function ConeMaterial = get.ConeMaterial(obj)
%     ConeMaterial = obj.Cone.Properties.MaterialValue;
%   end
  
  function set.t(obj,t)
    obj.Film.Geometry.t = t;
  end
  
  function set.a1(obj,a1)
    obj.Film.Geometry.a1 = a1;
  end
  
  function set.materialString(obj,materialString)
    obj.Film.MaterialTab.Material = materialString;
  end
  
  function set.h1(obj, h1)
    obj.Cone.Properties.ZSapnValue = h1;
  end
  
  function set.RTop(obj,rTop1)
    obj.Cone.Properties.RTopValue = rTop1;
  end
  
  function set.RBot(obj, rBot1)
    obj.Cone.Properties.RBottomValue = rBot1;
  end
  
  function set.ConeZ(obj, coneZ)
    obj.Film.Geometry.t = 2*coneZ - obj.Cone.Properties.ZSpanValue;
  end
 
  function set.FilmMaterial(obj, filmMaterial)
    obj.Film.MaterialTab.Material = filmMaterial;
  end
  
%   function set.ConeMaterial(obj, coneMaterial)
%     obj.Cone.Properties.MaterialValue = coneMaterial;
%   end
end

methods(Static)
      test();
end

end





% classdef FilmConeTop < handle
%   
%     properties(Dependent)
%       t;     % thickness of the thin Rectangle \m
%       a1;     % pitch of the cone          \m
%       %h1; % height of the cone         \m
%       rTop1;      % top radium of the cone     \m
%       rBot1;      % bottom radium of the cone    \m   
%       h1;     % the position of the cone   \m
%       
%       
%       Volume;                                 %\m^3
%       Area;                                   %\m^2 
%       EquivalentThickness;                    %\m
%     end
%     
%     
%     properties
%       Rectangle;
%       ConeTop;
%     end
%   
%   methods
%     function obj = FilmConeTop(t, a1, rTop1, rBot1, h1, materialString)
%       if nargin == 0
%         obj.Rectangle = RectangleFDTD();
%         obj.ConeTop = ConeTop();
%       elseif nargin == 6
%         obj.Rectangle = RectangleFDTD(t, a1, materialString);
%         obj.ConeTop = ConeTop(rTop1, rBot1, h1, materialString);
%         obj.Rectangle.zMax = obj.ConeTop.zMin;
% 
%         %obj.ConeTop.Geometry.Z = obj.ConeZ;
%       end
%     end
%       
%     function t = get.t(obj)
%        t = obj.Rectangle.t;
%      end    
%      
%      function a1 = get.a1(obj)
%        a1 = obj.Rectangle.a;
%      end    
%      
% %      function h1 = get.h1(obj)
% %       h1 = obj.Cone.Geometry.ZSpan;
% %      end    
% 
%      
%      function rTop1 = get.rTop1(obj)
%        rTop1 = obj.ConeTop.rTop;
%      end
%      
%      function rBot1 = get.rBot1(obj)
%        rBot1= obj.ConeTop.rBot;
%      end
%      
%      function h1 = get.h1(obj)
%        h1= obj.ConeTop.h;
%      end   
%      
%      function set.t(obj, t)
%        obj.Rectangle.t= t; 
%        obj.Rectangle.zMax = obj.ConeTop.zMin;
%      end     
%      
%      function set.a1(obj, a1)
%        obj.Rectangle.a= a1;      
%      end
%      
%      function set.h1(obj, h1)
%        obj.ConeTop.h1= h1;  
%        obj.ConeTop.zMin = obj.Rectangle.zMax;
%      end 
%      
%      function set.rTop1(obj, rTop1)
%        obj.ConeTop.rTop1= rTop1;      
%      end 
%      
%      function set.rBot1(obj, rBot1)
%        obj.ConeTop.rBot1=rBot1;      
%      end 
%      
%   end
%   
%   methods(Static)
%     test();
%     
%     function h1= calc_h1_from_effective_thickness(t, a1, rTop1, rBot1, effectiveThickness)
%         h1 = 3*(a1)^2*(effectiveThickness-t)/pi/(rTop1^2+rBot1^2+rTop1*rBot1);
%     end
%     
% % RectangleCone = create_withEquivalentThickness(equivalentThickness, zSpan, xSpan, rtop, rbot);
%   end
%   
%  
% end
% 
%     