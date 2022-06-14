function filmCone = create_withEquivalentThickness(effectiveThickness, t, a1, rTop1, rBot1)
  if nargin == 4
    h1 = a1^2*(effectiveThickness - t)/pi/(rTop1^2);
    filmCone =  FilmConeTop(t, a1, rTop1, rBot1, h1);    
  elseif nargin == 5
    h1 = 3*a1^2*(effectiveThickness - t)/pi/(rTop1^2+rTop1*rBot1+rBot1^2);
    filmCone =  FilmConeTop(t, a1, rTop1, rBot1, h1);
  end
end
