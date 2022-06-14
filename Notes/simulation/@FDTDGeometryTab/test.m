function test()
filename = 'test.lsf';
obj = FDTDGeometryTab();
 %obj.XMin = -3e-6;
% obj.XMax = 3e-6;
obj.YSpan = 10e-6;
% obj.YMin = -5e-6;
% obj.ZMin = -3e-6;
% obj.ZMax = 3e-6;
obj.write_lsf(filename);
end
