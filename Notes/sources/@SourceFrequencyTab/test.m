function test()
clear;
filename = 'test.lsf';
obj = SourceFrequencyTab();
obj.WavelengthMin = 280e-9;
obj.WavelengthMax = 1200e-9;
obj.write_lsf(filename);
end
