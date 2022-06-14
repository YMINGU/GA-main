function [x, fval, exitFlag] = gaSolar()
%
gaoptions=gaoptimset('CreationFcn',@createFcn,'CrossoverFcn',@crossoversinglepoint,...
    'CrossoverFraction',0.9,'Generations',20,'MutationFcn',{@mutationadaptfeasible,0.01},...
    'PopulationSize',5,'PopulationType','doubleVector',...
    'SelectionFcn',@selectionroulette,'StallGenLimit',5,...
    'TolFun', 1e-10, 'Vectorized','off');

nmTom = 1e-9;
effectiveThickness = 1000*nmTom; %nm
A = [2 0 -1 0; 0 2 -1 0]; 
b = [0 0]'*nmTom;                   
lb = [0; amin; amin/2; amin/2]; 
ub = [effectiveThickness; amax; amax/2; amax/2];
[x,fval,exitFlag]=ga(@(x)objFnc(x, effectiveThickness),4,A,b,[],[],lb,ub,[], gaoptions);

% define creation function
function pop = createFcn(NVARS,~,options)  %create the first generation
end
function UE = objFnc(x, effectiveThickness)
nmTom = 1e-9;
effectiveThickness = 1000*nmTom; %nm
t = x(1);
a1 = x(2);
rTop1 = x(3);
rBot1 = x(4);          
h1 = calculateH(t, a1, rTop1, rBot1, effectiveThickness); % calculate H using the calculateH function
h1 = ceil(h1/nmTom)*nmTom; % round H to the nearest 1 nm.
 if h1 > 4*effectiveThickness/pi*amax^2/amin^2             % if the h is bigger than its upper bound, let UE = 0
   UE = 0;
 else
   
runFDTD();
 end
end
end



