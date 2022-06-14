function test()
filename = 'test.lsf';
obj = MonitorSpectralTab();
obj.ApodizationCenter=300e-15;
obj.ApodizationTimeWidth = 200e-15;
obj.write_lsf(filename);
end