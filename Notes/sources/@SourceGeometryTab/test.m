function test()
clear;
obj = SourceGeometryTab;
% obj.X = 0;
 obj.XSpan = 0.4e-6;
% obj.Y = 0;
% obj.YSpan = 0.6e-6;
% obj.Z = 1e-6;
obj.write_lsf('test.lsf');
end