function test()
filename = 'test.lsf';
obj = FrequencyDomainFieldPower();
obj.Geometry.X = 2e-6;
%obj.Geometry.MonitorType = '2D Z-normal';

obj.write_lsf(filename);
end