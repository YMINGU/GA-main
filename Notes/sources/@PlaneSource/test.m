function test()
filename = 'test.lsf';
obj = PlaneSource();
obj.General.Direction = 'Backward';
obj.Geometry.X = 2;
obj.FrequencyWavelength.WavelengthMin = 280e-9;
obj.FrequencyWavelength.WavelengthMax = 1200e-9;
obj.write_lsf(filename);
end
