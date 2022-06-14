function test()
rTop1 = 0.2e-6;
rBot1 = 0.4e-6;
h1 = 0.6e-6;
obj = PropertiesTab(rTop1, rBot1, h1);
filename = 'test.lsf';
obj.write_lsf(filename);
end