function test()
filename = 'test.lsf';
obj = FDTDBoundaryConditionsTab();
obj.ZMinBc = 'Perodic';
obj.ZMaxBc = 'Perodic';
obj.AllowSymmetryOnAllBoundaries = 1;
obj.write_lsf(filename);
end
