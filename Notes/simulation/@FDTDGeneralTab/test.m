function test()
filename = 'test.lsf';
obj = FDTDGeneralTab(); %input here for exampleobj = FDTDGeneralTab( 1,500e-15,300);
obj.write_lsf(filename);
end