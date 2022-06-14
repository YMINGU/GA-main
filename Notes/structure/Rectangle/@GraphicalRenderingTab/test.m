function test()
  obj = GraphicalRenderingTab();
  obj.RenderType = 'detailed';
  obj.Detail = 0.5; 
  obj.OverrideColorOpacityFromMaterialDatabase = 1;
  %obj.Alpha = 1;  if obj.OverrideColorOpacityFromMaterialDatabase = 1 then
  %obj.Alpha = 1. Otherwise based on user define
  obj.write_lsf('test.lsf');
end
