function test()

filename = 'test.lsf';
t = 1e-06;
a1= 4e-06;
rTop1 = 1e-07;
rBot1 = 2e-07;
h1 = 4e-7;
materialString = 'Si (Silicon) - Palik';
obj = Model(FilmConeTop(t, a1, h1, rTop1, rBot1, materialString) , PlaneSource, FrequencyDomainFieldPower, FrequencyDomainFieldPower, FDTD);
obj.write_lsf(filename);
end


