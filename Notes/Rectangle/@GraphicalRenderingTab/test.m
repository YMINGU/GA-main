function test()
  obj = GraphicalRenderingTab();
  obj.RenderType = 'detailed';
  obj.Detail = 0.5; 
  obj.OverrideColorOpacityFromMaterialDatabase = 1;
  obj.Alpha = 1; 
  obj.write_lsf('testGraphicalRenderingTab');
end
