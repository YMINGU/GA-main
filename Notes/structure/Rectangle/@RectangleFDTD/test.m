function test()
clear;
a1 = 2e-6;
t = [];
% a1 = 1e-06;
% t = 2e-06;
materialString = 'Si (Silicon) - Palik';
obj = RectangleFDTD(t, a1,materialString); 
filename = 'test.lsf';
obj.write_lsf(filename);
%system('/Applications/Lumerical/FDTD\ Solutions/FDTD\ Solutions.app/Contents/MacOS/fdtd-solutions -run test.lsf');

end
