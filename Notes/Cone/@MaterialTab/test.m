function test()
clear;
obj = MaterialTab();
obj.Material = 'Si (Silicon) - Palik';
obj.write_lsf('testMaterial.lsf');
end