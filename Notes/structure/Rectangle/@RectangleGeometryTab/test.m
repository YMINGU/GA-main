function test()
clear;
obj = RectangleGeometryTab;
obj.XMin = -0.2;
obj.XMax = 0.2;
obj.YMin = -0.3;
obj.YMax = 0.3;
obj.ZSpan = 2;
obj.write_lsf('test.lsf');
end