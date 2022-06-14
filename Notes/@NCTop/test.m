function test
% TEST
% tests the NCTop class
rTop1 = 30;
rBot1 = 50;
a1 = 60;
h1 = 100;
t = 40;
material = MaterialType.create('Si');

SiNCTop = NCTop (rTop1, rBot1, a1, h1, t, material);

SiNCTop.write_lumerical_script();

end
