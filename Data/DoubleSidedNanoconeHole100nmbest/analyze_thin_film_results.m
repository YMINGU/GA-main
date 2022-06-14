% function analyze_thin_film_results()
%ANALYZE_THIN_FILM_RESULTS
% Analyzes the results from a single FDTD simulation
% Change the filename in order to obtain different results
% 
% Copyright 2011
% Paul Leu
% LAMP, University of Pittsburgh

%load('InputVariables');
filename = 'Toprtop100Toprbot160TopH40Topn2Botrbot200Botrbot400Botn1a800T160';
%filename2 = 'SiHexagonalNWa600';
sr = FDTDSimulationResults(filename);
%sr(2) = FDTDSimulationResults(filename2);
materialName = 'Si';
ma = MaterialType.create(materialName);

figure(1);
clf;
sr.plot_results_versus_wavelength;
%sr.plot_results_versus_wavelength;
set(gcf, 'Position', [800 500 540 390])
axis([280 2000 0 1]);

SS = SolarSpectrum.global_AM1p5();
SS = SS.truncate_spectrum_wavelength(280, 2000);
sc = SolarCell(SS, sr, ma);

disp(['Ultimate Efficiency: ', num2str(sc.UltimateEfficiency)]);