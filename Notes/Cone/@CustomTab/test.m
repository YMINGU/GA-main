function test()
%clear;
obj = CustomTab();
obj.Create3DObjectBy = 'revolution';
obj.write_lsf('test.lsf');
end