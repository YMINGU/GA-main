function test()
obj = GeometryTab;
obj.XMin = -3e-6;
obj.XMax = 3e-6;
obj.YMin = -5e-6;
obj.YMax = 5e-6;
obj.ZSpan = 2e-6;
obj.write_lsf('test.lsf');
end