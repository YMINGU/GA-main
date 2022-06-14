function test()
clear;
t = 2e-6;
a1 = 6e-6;
materialString = 'Si (Silicon) - Palik';
obj = Rectangle(t, a1, materialString);
filename = 'test.lsf';
obj.write_lsf(filename);
end
