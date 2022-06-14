function test()
filename = 'test.lsf';
obj = SourceGeneralTab();
% obj.SourceShape = 'Plane wave';
% obj.Amplitude = 1;
obj.write_lsf(filename);
end
