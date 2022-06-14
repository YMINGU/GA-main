
materialName = 'Si';
ma = MaterialType.create(materialName);
SS = SolarSpectrum.global_AM1p5();

filename = 'rtop500rbot100a1000T1100';

figure(1);
clf;
figure(2);
clf;
figure(3);
clf;

sr(1) = FDTDSimulationResults(filename);
%sr(1) = sr(1).patch_results([filename, '_2'], 'Frequency', 0, 1.6, 'Energy');


filename = 'rtop200rbot400a800T1200';
sr(2) = FDTDSimulationResults(filename);
%sr(2) = sr(2).patch_results([filename, '_2'], 'Frequency', 0, 1.6, 'Energy');


axis([1.12 4.428  0 1]);

hold on;
% directory = 'D:\Research\GaAs\trunk\Data\GAoptimization\Nanocone\300nm_20gridsize';
% cd(directory);
filename = 'Toprtop200Toprbot160TopH1000Topn2Botrbot300Botrbot300Botn1a820T1670';
sr(3) = FDTDSimulationResults(filename);
%sr(3) = sr(3).patch_results([filename, '_2'], 'Frequency', 0, 1.6, 'Energy');


for i = 1:3
  sr(i).AbsorptionResults.Data(sr(i).AbsorptionResults.Energy < ma.BandGap) = 0;
end

plotOptions{1} = {'Color', [185 85 210]./255, 'LineStyle', ':'};
plotOptions{2} = {'Color', [255 0 0]./255, 'LineStyle', '-.'};
plotOptions{3} = {'Color', 'g', 'LineStyle', '--'};

sr.plot_results_versus_energy(0, plotOptions{:});

figure(1)
axis([1.12 4.428  0 1]);
figure(2)
axis([1.12 4.428  0 1]);

figure(3)
axis([1.12 4.428  0 1]);


figure(3);
h = get(gca, 'Children');

legend([h(3), h(2), h(1)], 'Top only', 'Bottom only', 'Double side');
%legend('boxoff');

figure(3);

thicknessArray = 100;
va = VariableArray('thickness', 'nm', thicknessArray);
material = MaterialType.create(materialName);
tfArray = DoublePass.create_array(thicknessArray, material);
%tfArray = DoublePass.create_array(va, material);
%tfArray = SinglePass.create_single_pass_array(va, material);
plot(tfArray.AbsorptionResults.Energy, tfArray.AbsorptionResults.Data,'b-.')

%add_plotyy(SS.Energy, SS.IrradianceEnergy, ...
 % 'Irradiance (Wm^{-2}eV^{-1})', [0 2000], [0 400 800 1200 1600 2000],[]);

% figure(3);
% h = get(gcf, 'Children');
% ah = get(h(1), 'Children');
% %bh = get(h(3), 'Children');

%lh = legend('Ideal Double Pass');
%set(lh, 'Position', [0.45    0.4207    0.3708    0.1548], 'box', 'off')






