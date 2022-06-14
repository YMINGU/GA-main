classdef BeamOptionTab
   %Yuming Gu
   %yug52@pitt.edu
   %/Users/gyuming/GA-main/Notes/@Source
  
  properties
      CurrentIndex;
      BeamProfilePlot;
  end
  
  methods
      function obj=BeamOptionTab(varargin)
          if nargin ==0
              obj.CurrentIndex=1;
              obj.BeamProfilePlot='E field intensity';
          end
          
      end
      
      function set.BeamProfilePlot(obj,beamprofilePlot)
          options={'E field intensity','H field intensity','real(Ex)','real(Ey)','real(Ez)','real(Hx)','real(Hy)','real(Hz)','imag(Ex)','imag(Ey)','imag(Ez)','imag(Hx)','imag(Hy)','imag(Hz)'};
          obj.BeamProfilePlot=set_value_from_list(options,beamprofilePlot);
      end
  end
  
  methods(Static)
      test();
  end
  
end