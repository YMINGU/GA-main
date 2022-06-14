function [x, fval, exitFlag] = GAtest()
% rTop1, top radius of nanocone
% rBot1, bottom radius of nanocone
% a1, pitch of the nanocone
% h1, height of the trunc_cone
% t, thickness of the rectangle

gaoptions=gaoptimset('CreationFcn',@createFcn,'CrossoverFcn',@crossoversinglepoint,...
    'CrossoverFraction',0.9,'Generations',20,'MutationFcn',{@mutationadaptfeasible,0.01},...
    'PopulationSize',5,'PopulationType','doubleVector',...
    'SelectionFcn',@selectionroulette,'StallGenLimit',5,...
    'TolFun', 1e-10, 'Vectorized','off');


effectiveThickness = 1000*Constants.UnitConversions.NMtoM; % nm
amax = 2000*Constants.UnitConversions.NMtoM;
hmax = 5000*Constants.UnitConversions.NMtoM;

% linear constraints are
% 2*Ttop1 < a; 
% 2*rBot1 < a
% a < amax

%linear constraint
%x=[rTop1, rBot1, a1, t]
A = [2 0 -1 0; 0 0 0 0; 0 2 -1 0; 0 0 1 0]; 
b = [0 0 0 amax]'; 

lowerBound = [0; 0; 0; 0];           
[x,fval,exitFlag]=ga(@(x)objFnc(x, effectiveThickness),4,A,b,[],[],lowerBound,[],[], gaoptions);

function pop = createFcn(NVARS,~,options)
  pop = load('firstgeneration2.txt');
end

 function UE = objFnc(x, effectiveThickness)

  rTop1 = x(1);
  rBot1 = x(2);
  a1 = x(3);
  t = x(4);            
  
  runFDTD(effectiveThickness, t, a1, rTop1, rBot1);

  materialName = 'Si';
  load('InputVariables');      % load the InputVariables, so we can use the filename
  sr = FDTDSimulationResults(filename);
  ma = MaterialType.create(materialName);
  SS = SolarSpectrum.global_AM1p5();
  sc = SolarCell(SS, sr, ma);
  UE = sc.UltimateEfficiency;
  UE = -UE;                        %the GA algorithm gives out the minimum value, so we negative UE
end

end



