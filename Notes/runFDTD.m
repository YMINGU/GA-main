function runFDTD (a1, h1, t, rTop1, rBot1)
fileID = fopen ('runFDTD', 'w+');
fprintf = (fileID, 'selectall; \n');
fprintf = (fileID, 'delete; \n');
fprintf = (fileID, 'newproject; \n');
fprintf = (fileID, 'addrect; \n');
write_lumerical_script (fileID, 'x', obj.X);
write_lumerical_script (fileID, 'x span', obj.XSpan);
write_lumerical_script (fileID, 'y', obj.Y);
write_lumerical_script (fileID, 'y span', obj.YSpan);
write_lumerical_script (fileID, 'z', obj.Z);
write_lumerical_script (fileID, 'z span', obj.Zspan);

write_lumerical_script (fileID, 'material', obj.OpticalMaterial);
write_lumerical_script (fileID, 'overide mesh order from material database', obj.OverrideMeshOrderFromMaterialDatabase);
write_lumerical_script (fileID, 'grid attribute name', obj.GridAttributeName);

write_lumerical_script (fileID, 'first axis', 'none');
write_lumerical_script (fileID, 'second axis', 'none');
write_lumerical_script (fileID, 'third axis', 'none');

write_lumerical_script (fileID, 'render type', obj.RenderType');
write_lumerical_script (fileID, 'detail',  obj.detail);
write_lumerical_script (fileID, 'override color opacity from material database', obj.OverriderColorOpacityFromMaterialDatabase);
write_lumerical_script (fileID, 'alpha', obj.Alpha);
end