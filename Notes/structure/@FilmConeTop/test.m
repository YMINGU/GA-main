function test()
clear;
t = 1e-06;
a1= 4e-06;
rTop1 = 1e-07;
rBot1 = 2e-07;
h1 = 4e-7;
materialString = 'Si (Silicon) - Palik';
obj = FilmConeTop(t, a1, h1, rTop1, rBot1, materialString); 
filename = 'test.lsf';
obj.write_lsf(filename);
%h1 = FilmConeTop.calc_h1_from_effective_thickness(t, a1, rTop1, rBot1, effectiveThickness);
%h1 = t_total - t;
%effectiveThickness = 1e-6;
end
