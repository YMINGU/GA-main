function test()
filename = 'test.lsf';
obj = FDTDAdvancedOptionsTab();
% obj.ForceSymmetricXMesh = 0;
% obj.ForceSymmetricYMesh = 0;
% obj.ForceSymmetricZMesh = 0;
% obj.OverrideSimulationBandwidthForMeshGeneration = 0;
% obj.SnapPertoYeeCellBoundary = 0;
%  obj.AlwaysUseComplexField = 0;
%  obj.UseEarlyShutoff = 1;
 %obj.AutoShutoff = 1e-6;
%  obj.UseDivergenceChecking = 1;
%  obj.AutoShutoffMax = 1e5;
%  obj.DownSmapleTime = 100;
%  obj.PmlKappa = 2;
%  obj.PmlSigma = 0.25;
%  obj.MinimumPmlLayers = 12;
%  obj.MaximumPmlLayers = 64;
%  obj.PmlPolynomial = 3;
%  obj.TypeofPml = 'standard';
%  obj.ExtendStructureThroughPML = 1;
%  obj.MaxSourceTimeSignalLength = 32768;
%  obj.SetProcessGrid = 0;
%  obj.Nx = 1;
%  obj.Ny = 1;
%  obj.Nz = 1;
obj.write_lsf(filename);
end
