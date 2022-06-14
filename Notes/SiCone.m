function SiCone = CreateThinFilm (rTop1, rBot1, a1, h1, t)
h1 = 3*a1^2*(effectiveThickness - t) / pi / (rTop1^2+rTop*rBot+rBot^2);
SiCone = SiNCTop (rTop1, rBot1, a1, h1, t)
end