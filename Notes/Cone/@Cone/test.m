function test()
clear;
rTop1 = 2e-6;
rBot1 = 3e-6;
h1 = 4e-6;
materialString = 'Si (Silicon) - Palik';
obj = Cone(rTop1, rBot1, h1, materialString); 
filename = 'test.lsf';
obj.write_lsf(filename);
end
