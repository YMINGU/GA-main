function test()
rTop1 = 2e-8;
rBot1 = 3e-8;
h1 = 1e-6;
obj = PropertiesTab(rTop1, rBot1, h1);
obj.write_lsf('testProperties');
end